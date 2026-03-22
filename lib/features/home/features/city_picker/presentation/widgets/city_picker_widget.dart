import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/home/features/city_picker/presentation/bloc/city_picker_bloc.dart';
import 'package:aviatraffic/features/home/features/city_picker/presentation/city_picker_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CityPickerWidget extends StatelessWidget {
  const CityPickerWidget({super.key});

  Future<void> _openFromPicker(BuildContext context) async {
    final result = await showModalBottomSheet<City>(
      context: context,
      isScrollControlled: true,
      showDragHandle: false,
      backgroundColor: Colors.transparent,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, _) => const CityPickerSheet(isFrom: true),
      ),
    );
    if (result != null) {
      context.read<CityPickerBloc>().add(CityPickerEvent.setFrom(from: result));
    }
  }

  Future<void> _openToPicker(BuildContext context) async {
    final result = await showModalBottomSheet<City>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      showDragHandle: false,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, __) => const CityPickerSheet(isFrom: false),
      ),
    );
    if (result != null) {
      context.read<CityPickerBloc>().add(CityPickerEvent.setTo(to: result));
    }
  }

  void _swapCities(BuildContext context) {
    context.read<CityPickerBloc>().add(const CityPickerEvent.swap());
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    final mainTextStyle = textStyles.bodyMediumSemiBold.copyWith(
      height: 16 / 13,
      color: AppColors.onBackground,
    );

    final hintTextStyle = textStyles.bodyMediumSemiBold.copyWith(
      height: 16 / 13,
      color: AppColors.neutral500,
    );

    final smallHintStyle = textStyles.caption.copyWith(
      height: 16 / 13,
      color: AppColors.neutral500,
    );

    return BlocBuilder<CityPickerBloc, CityPickerState>(
      builder: (context, state) {
        final from = state.from;
        final to = state.to;

        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 48.h),
                    child: GestureDetector(
                      onTap: () => _openFromPicker(context),
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 7.h,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: from == null
                                  ? Text(
                                      context.l10n.from,
                                      style: hintTextStyle,
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          context.l10n.from,
                                          style: smallHintStyle,
                                        ),
                                        Text(from.name, style: mainTextStyle),
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 48.h),
                    child: GestureDetector(
                      onTap: () => _openToPicker(context),
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 7.h,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: to == null
                                  ? Text(context.l10n.to, style: hintTextStyle)
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          context.l10n.to,
                                          style: smallHintStyle,
                                        ),
                                        Text(to.name, style: mainTextStyle),
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 16.w,
              top: 0,
              bottom: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () => _swapCities(context),
                  child: Container(
                    width: 24.w,
                    height: 24.h,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/images/swap.svg'),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
