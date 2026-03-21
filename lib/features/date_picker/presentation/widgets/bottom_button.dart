import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DatePickerBottomButton extends StatelessWidget {
  final bool hasReturn;
  final VoidCallback onPressed;

  const DatePickerBottomButton({
    super.key,
    required this.hasReturn,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: SafeArea(
        top: false,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 56.h),
          ),
          child: Text(
            hasReturn ? 'Далее' : 'Обратный билет не нужен',
            style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
              height: 16 / 13,
            ),
          ),
        ),
      ),
    );
  }
}
