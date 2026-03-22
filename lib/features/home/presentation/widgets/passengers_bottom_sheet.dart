import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/shared/presentation/widgets/bottom_sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PassengersBottomSheet extends StatefulWidget {
  final int adultCount;
  final int childCount;
  final int babyCount;
  final Function(int, int, int) update;

  const PassengersBottomSheet({
    super.key,
    required this.adultCount,
    required this.childCount,
    required this.babyCount,
    required this.update,
  });

  @override
  State<PassengersBottomSheet> createState() => _PassengersBottomSheetState();
}

class _PassengersBottomSheetState extends State<PassengersBottomSheet> {
  late int adultCount;
  late int childCount;
  late int babyCount;

  @override
  void initState() {
    super.initState();
    adultCount = widget.adultCount;
    childCount = widget.childCount;
    babyCount = widget.babyCount;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: .vertical(top: Radius.circular(28.r)),
      ),
      padding: .symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeader(
            title: context.l10n.select_count,
            onClose: () => Navigator.pop(context),
          ),
          Gap.v24,
          _PassengersRowWidget(
            text: context.l10n.adult_label,
            count: adultCount,
            onChange: (val) => setState(() => adultCount = val),
          ),
          Gap.v16,
          _PassengersRowWidget(
            text: context.l10n.child_label,
            count: childCount,
            onChange: (val) => setState(() => childCount = val),
          ),
          Gap.v16,
          _PassengersRowWidget(
            text: context.l10n.infant_label,
            count: babyCount,
            onChange: (val) => setState(() => babyCount = val),
          ),
          Gap.v32,
          Padding(
            padding: .only(bottom: 16.h),
            child: SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {
                  widget.update(adultCount, childCount, babyCount);
                  Navigator.pop(context);
                },
                child: Text(context.l10n.done),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PassengersRowWidget extends StatelessWidget {
  final String text;
  final int count;
  final Function(int) onChange;

  const _PassengersRowWidget({
    required this.text,
    required this.count,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: textStyles.bodyMediumSemiBold.copyWith(
              color: AppColors.onBackground,
            ),
          ),
        ),
        SizedBox(
          width: 100.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: .spaceBetween,
            children: [
              SizedBox(
                width: 24.w,
                height: 24.h,
                child: ElevatedButton(
                  onPressed: count > 0 ? () => onChange(count - 1) : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: count > 0
                        ? AppColors.primary
                        : AppColors.neutral100,
                    shape: CircleBorder(
                      side: BorderSide(color: AppColors.neutral200, width: 1),
                    ),
                  ),

                  child: Text(
                    '-',
                    style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ),
              Text(
                count.toString(),
                style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                  color: AppColors.onBackground,
                  height: 16 / 13,
                ),
              ),
              SizedBox(
                width: 24.w,
                height: 24.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: CircleBorder(
                      side: BorderSide(color: AppColors.neutral200, width: 1),
                    ),
                  ),
                  onPressed: () => onChange(count + 1),
                  child: Text(
                    '+',
                    style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
