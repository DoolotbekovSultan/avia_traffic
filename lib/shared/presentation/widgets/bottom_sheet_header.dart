import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetHeader extends StatelessWidget {
  final String title;
  final Function onClose;
  BottomSheetHeader({super.key, required this.title, required this.onClose});

  final textStyles = getIt<AppTextStyles>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DragHandle(),
        Gap.v16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textStyles.titleMediumBold.copyWith(color: Colors.black),
            ),
            GestureDetector(
              onTap: () => onClose(),
              child: SvgPicture.asset(
                'assets/images/close.svg',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DragHandle extends StatelessWidget {
  const DragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7.h, bottom: 8.h),
      width: 36.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: AppColors.neutral200,
        borderRadius: BorderRadius.circular(2.r),
      ),
    );
  }
}
