import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/features/home/features/date_picker/presentation/bloc/date_picker_bloc.dart';
import 'package:aviatraffic/features/home/features/date_picker/presentation/widgets/date_picker_bottom_button.dart';
import 'package:aviatraffic/features/home/features/date_picker/presentation/widgets/date_chip.dart';
import 'package:aviatraffic/features/home/features/date_picker/presentation/widgets/month_calendar.dart';
import 'package:aviatraffic/shared/presentation/widgets/bottom_sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatePickerSheet extends StatelessWidget {
  final DateTime? initialDate;
  final DateTime? initialReturnDate;
  final void Function(DateTime? depart, DateTime? returnDate) onConfirm;
  final Map<DateTime, int> prices;

  const DatePickerSheet({
    super.key,
    this.initialDate,
    this.initialReturnDate,
    required this.onConfirm,
    this.prices = const {},
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DatePickerBloc()
        ..add(
          DatePickerEvent.initialize(
            initialDepart: initialDate,
            initialReturn: initialReturnDate,
            prices: prices,
          ),
        ),
      child: _DatePickerSheetContent(onConfirm: onConfirm),
    );
  }
}

class _DatePickerSheetContent extends StatelessWidget {
  final void Function(DateTime? depart, DateTime? returnDate) onConfirm;

  const _DatePickerSheetContent({required this.onConfirm});

  void _onConfirm(
    BuildContext context,
    DateTime? depart,
    DateTime? returnDate,
  ) {
    onConfirm(depart, returnDate);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatePickerBloc, DatePickerState>(
      builder: (context, state) {
        return DraggableScrollableSheet(
          initialChildSize: 0.92,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28.r)),
              ),
              padding: .symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  BottomSheetHeader(
                    title: 'Когда',
                    onClose: () =>
                        _onConfirm(context, state.departDate, state.returnDate),
                  ),
                  Gap.v24,
                  _buildDateSelector(context, state),
                  const Divider(height: 1),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          for (int i = 0; i < 7; i++) ...[
                            MonthCalendar(
                              month: DateTime(
                                DateTime.now().year,
                                DateTime.now().month + i,
                              ),
                              departDate: state.departDate,
                              returnDate: state.returnDate,
                              prices: state.normalizedPrices,
                              onDayTap: (date) => context
                                  .read<DatePickerBloc>()
                                  .add(DatePickerEvent.selectDate(date)),
                            ),
                            Gap.v24,
                          ],
                          SizedBox(height: 100.h),
                        ],
                      ),
                    ),
                  ),
                  if (state.departDate != null)
                    DatePickerBottomButton(
                      hasReturn: state.returnDate != null,
                      onPressed: () => _onConfirm(
                        context,
                        state.departDate,
                        state.returnDate,
                      ),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildDateSelector(BuildContext context, DatePickerState state) {
    return Padding(
      padding: .only(top: 4.h, bottom: 12.h),
      child: Row(
        children: [
          Expanded(
            child: DateChip(
              isDepart: true,
              date: state.departDate,
              onClear: () => context.read<DatePickerBloc>().add(
                const DatePickerEvent.resetDates(),
              ),
            ),
          ),
          SizedBox(width: 1.w),
          Expanded(
            child: DateChip(
              isDepart: false,
              date: state.returnDate,
              onClear: () {},
            ),
          ),
        ],
      ),
    );
  }
}
