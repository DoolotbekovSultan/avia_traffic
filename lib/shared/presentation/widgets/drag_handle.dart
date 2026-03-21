import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DragHandle extends StatelessWidget {
  const DragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: Color(0x302F3366).withValues(alpha: .4),
        borderRadius: .circular(2.r),
      ),
    );
  }
}
