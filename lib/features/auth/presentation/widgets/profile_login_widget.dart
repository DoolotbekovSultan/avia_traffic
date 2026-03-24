import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileLoginWidget extends StatelessWidget {
  const ProfileLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      child: Card(
        color: Color(0xFFD9E4F6),
        shape: RoundedRectangleBorder(borderRadius: .circular(16.r)),
        child: Padding(
          padding: .symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                "👋Уважаемый пользователь ",
                style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                  color: AppColors.onBackground,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                'Осуществите вход для просмотра\nзаказов и сохранения ваших данных',
                textAlign: .center,
                style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                  color: AppColors.onBackground,
                  height: 24 / 15,
                ),
              ),
              Gap.v24,
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () => context.router.push(const LoginRoute()),
                  child: Text(context.l10n.login),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

