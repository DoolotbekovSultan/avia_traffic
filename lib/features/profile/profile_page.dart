import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/shared/presentation/widgets/avia_traffic_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

class _ProfileLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      child: Card(
        color: Color(0xFFD9E4F6),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                textAlign: TextAlign.center,
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
                  onPressed: () {
                    context.router.root.push(const LoginRoute());
                  },
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

@RoutePage()
class ProfileShellPage extends StatelessWidget {
  const ProfileShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [const Color(0xFFF7C8C8), AppColors.primary],
          stops: const [0.0, 1.0],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AviaTrafficAppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.surface,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: _ProfileLoginWidget(),
              ),
              GestureDetector(
                onTap: () {
                  context.router.push(const PersonalDataRoute());
                },
                child: Container(
                  height: 44.h,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      Text(
                        context.l10n.personal_data,
                        style: getIt<AppTextStyles>()
                            .bodyMediumSemiBold
                            .copyWith(color: AppColors.onBackground, height: 1),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: SvgPicture.asset(
                          'assets/images/arrow.svg',
                          width: 16.w,
                          height: 16.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: Color(0xFFD9E4F6)),
              Container(
                height: 44.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Text(
                      'Мои заказы',
                      style: getIt<AppTextStyles>().bodyMediumSemiBold.copyWith(
                            color: AppColors.onBackground,
                            height: 1,
                          ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: SvgPicture.asset(
                        'assets/images/arrow.svg',
                        width: 16.w,
                        height: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Color(0xFFD9E4F6)),
              GestureDetector(
                onTap: () {
                  context.router.push(const InformationRoute());
                },
                child: Container(
                  height: 44.h,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      Text(
                        'Информация',
                        style: getIt<AppTextStyles>()
                            .bodyMediumSemiBold
                            .copyWith(color: AppColors.onBackground, height: 1),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 16.w),
                        child: SvgPicture.asset(
                          'assets/images/arrow.svg',
                          width: 16.w,
                          height: 16.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: Color(0xFFD9E4F6)),
            ],
          ),
        ),
      ),
    );
  }
}
