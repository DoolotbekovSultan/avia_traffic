import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/shared/presentation/widgets/bottom_sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyBottomSheet extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onSelected;

  const CurrencyBottomSheet({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  static const _currencies = ['KGS', 'USD', 'KZT'];

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      minChildSize: 0.25,
      maxChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(28.r)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BottomSheetHeader(
                  title: 'Валюта',
                  onClose: () => Navigator.pop(context),
                ),
                Gap.v24,
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _currencies.length,
                    controller: scrollController,
                    itemBuilder: (_, i) {
                      final currency = _currencies[i];
                      final isSelected = currency == selected;
                      return InkWell(
                        onTap: () {
                          onSelected(currency);
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 40.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                currency,
                                style: textStyles.bodyMediumSemiBold.copyWith(
                                  color: isSelected
                                      ? AppColors.primary
                                      : AppColors.onBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
