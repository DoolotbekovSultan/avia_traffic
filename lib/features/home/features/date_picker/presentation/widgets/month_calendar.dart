import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/date_picker/domain/entities/calendar_day.dart';
import 'package:aviatraffic/features/home/features/date_picker/domain/usecases/get_calendar_month_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class MonthCalendar extends StatelessWidget {
  final DateTime month;
  final DateTime? departDate;
  final DateTime? returnDate;
  final Map<DateTime, int> prices;
  final Function(DateTime) onDayTap;

  const MonthCalendar({
    super.key,
    required this.month,
    this.departDate,
    this.returnDate,
    required this.prices,
    required this.onDayTap,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();
    final l10n = context.l10n;
    final weekdayLabels = [
      l10n.monday_short,
      l10n.tuesday_short,
      l10n.wednesday_short,
      l10n.thursday_short,
      l10n.friday_short,
      l10n.saturday_short,
      l10n.sunday_short,
    ];

    final useCase = GetCalendarMonthUseCase();
    final getCalendarMonthParams = GetCalendarMonthParams(
      month: month,
      prices: prices,
    );

    return FutureBuilder(
      future: useCase(getCalendarMonthParams),
      builder: (context, snapshot) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 16,
                spreadRadius: 2,
                offset: Offset.zero,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  _monthTitle(month, context),
                  style: textStyles.bodyMediumBold.copyWith(
                    color: AppColors.onBackground,
                  ),
                ),
                SizedBox(height: 22.h),
                const Divider(),
                const SizedBox(height: 20),
                Row(
                  children: weekdayLabels.map((day) {
                    return Expanded(
                      child: Center(
                        child: Text(
                          day.toString(),
                          style: textStyles.bodyMediumBold.copyWith(
                            color: AppColors.neutral500,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                Gap.v24,
                _buildDaysGrid(
                  snapshot.data?.fold((failure) => [], (cells) => cells) ?? [],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _monthTitle(DateTime month, BuildContext context) {
    final formatted = DateFormat(
      'MMMM yyyy',
      context.currentLocale.languageCode,
    ).format(month);
    return "${formatted[0].toUpperCase()}${formatted.substring(1).toLowerCase()}";
  }

  Widget _buildDaysGrid(List<CalendarDay> cells) {
    final rows = <Widget>[];
    for (int i = 0; i < cells.length; i += 7) {
      final rowCells = cells.sublist(i, i + 7);
      rows.add(_buildWeekRow(rowCells));
    }
    return Column(children: rows);
  }

  Widget _buildWeekRow(List<CalendarDay> rowCells) {
    return Row(
      children: List.generate(rowCells.length, (index) {
        final cell = rowCells[index];
        final isFirst = index == 0;
        final isLast = index == rowCells.length - 1;
        return Expanded(child: _buildDayCell(cell, isFirst, isLast));
      }),
    );
  }

  Widget _buildDayCell(CalendarDay cell, bool isFirstInRow, bool isLastInRow) {
    final textStyles = getIt<AppTextStyles>();
    final date = cell.date;

    final isDepart =
        departDate != null && DateUtils.isSameDay(date, departDate!);
    final isReturn =
        returnDate != null && DateUtils.isSameDay(date, returnDate!);
    final isSelected = isDepart || isReturn;

    final isInRange = departDate != null &&
        returnDate != null &&
        date.isAfter(departDate!) &&
        date.isBefore(returnDate!);

    final hasPrice = cell.price > 0 && cell.isCurrentMonth;

    const Color rangeColor = Color(0xFFF3F4F5);
    BorderRadius bgRadius = BorderRadius.zero;
    bool showRangeBg = false;

    if (isDepart && returnDate != null) {
      showRangeBg = true;
      bgRadius = BorderRadius.horizontal(
        right: Radius.zero,
        left: Radius.circular(20.r),
      );
    } else if (isReturn && departDate != null) {
      showRangeBg = true;
      bgRadius = BorderRadius.horizontal(
        right: Radius.circular(20.r),
        left: Radius.zero,
      );
    } else if (isInRange) {
      showRangeBg = true;
      if (isFirstInRow && isLastInRow) {
        bgRadius = BorderRadius.circular(20.r);
      } else if (isFirstInRow) {
        bgRadius = BorderRadius.horizontal(left: Radius.circular(20.r));
      } else if (isLastInRow) {
        bgRadius = BorderRadius.horizontal(right: Radius.circular(20.r));
      }
    }

    return GestureDetector(
      onTap: cell.isCurrentMonth ? () => onDayTap(date) : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.h),
          Container(
            height: 30.h,
            decoration: BoxDecoration(
              color: showRangeBg ? rangeColor : Colors.transparent,
              borderRadius: bgRadius,
            ),
            child: Center(
              child: Container(
                width: 30.w,
                height: 30.h,
                decoration: isSelected
                    ? const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      )
                    : null,
                child: Center(
                  child: Text(
                    '${date.day}',
                    style: textStyles.bodyMediumSemiBold.copyWith(
                      height: 16 / 13,
                      color: isSelected
                          ? Colors.white
                          : cell.isCurrentMonth
                              ? AppColors.onBackground
                              : AppColors.neutral500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (hasPrice)
            Text(
              _formatPrice(cell.price),
              style: textStyles.labelSmall.copyWith(
                color: isSelected ? Colors.white : AppColors.primary,
              ),
            )
          else
            SizedBox(height: 20.h),
        ],
      ),
    );
  }

  String _formatPrice(int price) {
    if (price >= 1000) {
      final thousands = price ~/ 1000;
      final remainder = price % 1000;
      if (remainder == 0) return '$thousands 000';
      return '$thousands ${remainder.toString().padLeft(3, '0')}';
    }
    return '$price';
  }
}
