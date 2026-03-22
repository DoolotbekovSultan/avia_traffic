import 'package:aviatraffic/core/constants/widget_constants.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class DateChip extends StatelessWidget {
  final bool isDepart;
  final DateTime? date;
  final VoidCallback onClear;

  const DateChip({
    super.key,
    required this.isDepart,
    this.date,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();
    final placeholder = isDepart ? 'Когда' : 'Обратно';

    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.surface,
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
        padding: EdgeInsets.symmetric(
          horizontal: WidgetConstants.mediumPadding,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                date != null ? _formatHeaderDate(date!) : placeholder,
                style: textStyles.bodyMedium.copyWith(
                  color: date != null
                      ? AppColors.onBackground
                      : AppColors.neutral400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (date != null && isDepart)
              GestureDetector(
                onTap: onClear,
                child: SvgPicture.asset(
                  'assets/images/date_close.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            if (isDepart && date == null)
              SvgPicture.asset(
                'assets/images/outline_calendar.svg',
                width: 24.w,
                height: 24.h,
              ),
          ],
        ),
      ),
    );
  }

  String _formatHeaderDate(DateTime date) {
    return DateFormat('d MMMM, EE', 'ru').format(date);
  }
}
