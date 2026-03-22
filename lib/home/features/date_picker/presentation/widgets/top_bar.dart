import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DatePickerTopBar extends StatelessWidget {
  final VoidCallback onClose;

  const DatePickerTopBar({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Когда',
            style: textStyles.titleMediumBold.copyWith(
              color: AppColors.onBackground,
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/close.svg',
              width: 24.w,
              height: 24.h,
            ),
            onPressed: onClose,
          ),
        ],
      ),
    );
  }
}
