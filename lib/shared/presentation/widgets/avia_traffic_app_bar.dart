import 'package:aviatraffic/core/constants/widget_constants.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AviaTrafficAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AviaTrafficAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [const Color(0xFFF7C8C8), AppColors.primary],
            stops: const [0.0, 1.0],
          ),
        ),
        child: SizedBox(
          height: 50.h,
          child: Stack(
            children: [
              Positioned(
                top: 17.2.h,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 152.w,
                  height: 19.02.h,
                ),
              ),
              Padding(
                padding: .only(right: WidgetConstants.mediumPadding),
                child: Align(
                  alignment: .centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/images/settings.svg',
                        width: 24.w,
                        height: 24.w,
                      ),
                      Gap.h16,
                      SvgPicture.asset(
                        'assets/images/nottification.svg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
