import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
    adultCount = widget.adultCount;
    childCount = widget.childCount;
    babyCount = widget.babyCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 7.h),
          Center(
            child: Container(
              width: 36.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Gap.v24,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Выберите количество',
                  style: textStyles.titleMediumBold.copyWith(
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    'assets/images/close.svg',
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      AppColors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap.v32,
          _PassengersRowWidget(
            text: "Взрослый    (15+)",
            count: widget.adultCount,
            onChange: (newAdult) {
              setState(() {
                adultCount = newAdult;
              });
            },
          ),
          Gap.v16,
          _PassengersRowWidget(
            text: "Ребенок     (2-14 лет)",
            count: widget.childCount,
            onChange: (newChild) {
              setState(() {
                childCount = newChild;
              });
            },
          ),
          Gap.v16,
          _PassengersRowWidget(
            text: "Младенец    (до 2х лет)",
            count: widget.babyCount,
            onChange: (newBaby) {
              setState(() {
                babyCount = newBaby;
              });
            },
          ),
          SizedBox(height: 34.h),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
            child: SizedBox(
              height: 56.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  widget.update(adultCount, childCount, babyCount);
                  Navigator.pop(context);
                },
                child: Text('Готово'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PassengersRowWidget extends StatefulWidget {
  final String text;
  final int count;
  final Function(int) onChange;

  const _PassengersRowWidget({
    required this.text,
    required this.count,
    required this.onChange,
  });

  @override
  State<_PassengersRowWidget> createState() {
    return _PassengersRowWidgetState();
  }
}

class _PassengersRowWidgetState extends State<_PassengersRowWidget> {
  late int count;
  @override
  void initState() {
    count = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Text(widget.text),
          Spacer(),
          SizedBox(
            width: 100.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 24.w,
                  height: 24.h,
                  child: ElevatedButton(
                    onPressed: count > 0
                        ? () => setState(() {
                              count--;
                              widget.onChange(count);
                            })
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          count > 0 ? AppColors.primary : AppColors.neutral100,
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
                    onPressed: () => setState(() {
                      count++;
                      widget.onChange(count);
                    }),
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
      ),
    );
  }
}
