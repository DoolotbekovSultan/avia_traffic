import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InformationWidget extends StatelessWidget {
  final String text;
  final Function onClick;

  const InformationWidget({
    super.key,
    required this.text,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        height: 48.h,
        width: 343.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: .circular(6.r),
        ),
        padding: .symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Text(
              text,
              style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                color: AppColors.onBackground,
                height: 1,
              ),
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 16.w,
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
