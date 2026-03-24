import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(title: context.l10n.personal_data),
      body: SizedBox(
        height: .infinity,
        width: .infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .center,
            children: [Gap.v24, _EmailWidget(), Gap.v24, _PassordWidget()],
          ),
        ),
      ),
    );
  }
}

class _EmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      child: Card(
        color: Color(0xFFD9E4F6),
        shape: RoundedRectangleBorder(borderRadius: .circular(16.r)),
        child: Padding(
          padding: .symmetric(horizontal: 16.w, vertical: 18.h),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                'Личные данные',
                style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                  color: AppColors.onBackground,
                ),
              ),
              Gap.v16,
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ваш Email',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
              Gap.v24,
              SizedBox(
                height: 56.h,
                width: .infinity,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('Сохранить'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PassordWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      child: Card(
        color: Color(0xFFD9E4F6),
        shape: RoundedRectangleBorder(borderRadius: .circular(16.r)),
        child: Padding(
          padding: .symmetric(horizontal: 16.w, vertical: 18.h),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              Text(
                'Поменять пароль',
                style: getIt<AppTextStyles>().bodyMediumBold.copyWith(
                  color: AppColors.onBackground,
                ),
              ),
              Gap.v16,
              TextField(
                decoration: InputDecoration(
                  hintText: 'Старый пароль',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
              Gap.v16,
              TextField(
                decoration: InputDecoration(
                  hintText: 'Новый пароль',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ),
              Gap.v24,
              SizedBox(
                height: 56.h,
                width: .infinity,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('Изменить пароль'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
