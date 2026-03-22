import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
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
    final l10n = context.l10n;
    return SafeArea(
      top: false,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 56.h),
        ),
        child: Text(hasReturn ? l10n.next : l10n.no_return_needed),
      ),
    );
  }
}
