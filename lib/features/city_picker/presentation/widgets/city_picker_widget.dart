import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/city_picker/domain/entities/city.dart';
import 'package:aviatraffic/features/city_picker/presentation/city_picker_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityPickerWidget extends StatefulWidget {
  final String initialFrom;
  final String initialTo;
  final Function(String from, String to) onChanged;

  const CityPickerWidget({
    super.key,
    this.initialFrom = '',
    this.initialTo = '',
    required this.onChanged,
  });

  @override
  State<CityPickerWidget> createState() => _CityPickerWidgetState();
}

class _CityPickerWidgetState extends State<CityPickerWidget> {
  late String _from;
  late String _to;

  @override
  void initState() {
    super.initState();
    _from = widget.initialFrom;
    _to = widget.initialTo;
  }

  @override
  void didUpdateWidget(covariant CityPickerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialFrom != widget.initialFrom) _from = widget.initialFrom;
    if (oldWidget.initialTo != widget.initialTo) _to = widget.initialTo;
  }

  Future<void> _openFromPicker() async {
    final result = await showModalBottomSheet<City>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, _) => const CityPickerPage(isFrom: true),
      ),
    );
    if (result != null) {
      setState(() {
        _from = '${result.city},${result.code}';
        widget.onChanged(_from, _to);
      });
    }
  }

  Future<void> _openToPicker() async {
    final result = await showModalBottomSheet<City>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, __) => const CityPickerPage(isFrom: false),
      ),
    );
    if (result != null) {
      setState(() {
        _to = '${result.city},${result.code}';
        widget.onChanged(_from, _to);
      });
    }
  }

  void _swapCities() {
    setState(() {
      final tmp = _from;
      _from = _to;
      _to = tmp;
      widget.onChanged(_from, _to);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    final mainTextStyle = textStyles.titleMedium.copyWith(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      height: 16 / 13,
      color: const Color(0xFF212020),
    );

    final hintTextStyle = textStyles.titleMedium.copyWith(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      height: 16 / 13,
      color: const Color(0xFF8992A0),
    );

    final smallHintStyle = textStyles.bodySmall.copyWith(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      height: 16 / 13,
      color: const Color(0xFF8992A0),
    );

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
              SizedBox(
                height: 48.h,
                child: GestureDetector(
                  onTap: _openFromPicker,
                  behavior: HitTestBehavior.opaque,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 7.h,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _from.isEmpty
                              ? Text('Откуда', style: hintTextStyle)
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Откуда', style: smallHintStyle),
                                    Text(_from, style: mainTextStyle),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(height: 1, indent: 16, endIndent: 16),
              SizedBox(
                height: 48.h,
                child: GestureDetector(
                  onTap: _openToPicker,
                  behavior: HitTestBehavior.opaque,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 7.h,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: _to.isEmpty
                          ? Text('Куда', style: hintTextStyle)
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Куда', style: smallHintStyle),
                                Text(_to, style: mainTextStyle),
                              ],
                            ),
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
              onTap: _swapCities,
              child: Container(
                width: 24.w,
                height: 24.h,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.swap_horiz_rounded,
                  color: Colors.white,
                  size: 16.w,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
