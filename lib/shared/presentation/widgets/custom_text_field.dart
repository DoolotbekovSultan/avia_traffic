import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final bool hasError;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String obscuringCharacter;
  final bool obscureText;
  final bool labelAlways;
  final TextInputAction? textInputAction;
  final bool readOnly;
  const CustomTextField({
    super.key,
    required TextEditingController textEditingController,
    this.errorText,
    this.labelText,
    this.hintText,
    this.hasError = false,
    this.suffixIcon,
    this.keyboardType,
    this.obscuringCharacter = '*',
    this.obscureText = false,
    this.textInputAction,
    this.readOnly = false,
    this.labelAlways = true,
  }) : _numberTextEditingController = textEditingController;

  final TextEditingController _numberTextEditingController;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // Use it to change color for border when textFiled in focus
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 48.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: widget.hasError || widget.errorText != null
                  ? AppColors.error
                  : _focusNode.hasFocus
                  ? AppColors.primary
                  : Colors.transparent,
              width: _focusNode.hasFocus ? 2 : 1,
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16..w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.labelText != null &&
                      (widget.labelAlways ||
                          _focusNode.hasFocus ||
                          widget._numberTextEditingController.text.isNotEmpty))
                    Text(
                      widget.labelText!,
                      style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                        fontSize: 12.sp,
                        height: 0,
                        color: AppColors.neutral500,
                      ),
                    ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          expands: false,
                          maxLines: 1,
                          focusNode: _focusNode,
                          keyboardType: widget.keyboardType,
                          controller: widget._numberTextEditingController,
                          obscuringCharacter: widget.obscuringCharacter,
                          textInputAction: widget.textInputAction,
                          obscureText: widget.obscureText,
                          style: getIt<AppTextStyles>().bodyMediumSemiBold
                              .copyWith(
                                color: AppColors.onBackground,
                                height: 0,
                              ),
                          decoration: InputDecoration(
                            // errorText: widget.errorText,
                            isDense: true,
                            hintText:
                                (_focusNode.hasFocus && !widget.labelAlways)
                                ? null
                                : widget.hintText,
                            contentPadding: EdgeInsets.zero,
                            fillColor: Colors.white,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      if (widget.suffixIcon != null) widget.suffixIcon!,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        if (widget.errorText != null)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap.v12,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.errorText!,
                  style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                    color: AppColors.error,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
