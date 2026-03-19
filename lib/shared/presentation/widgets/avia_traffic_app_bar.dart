import 'package:aviatraffic/core/theme/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AviaTrafficAppBar extends StatelessWidget {
  const AviaTrafficAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Stack(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 152.w,
                height: 19.h,
              ),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/settings.png',
                  width: 24.w,
                  height: 24.w,
                ),
                Gap.h16,
                Image.asset(
                  'assets/images/nottification.png',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
