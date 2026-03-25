import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/shared/presentation/widgets/gradient_app_bar.dart';
import 'package:aviatraffic/shared/presentation/widgets/information_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _InformationAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap.v24,
            InformationWidget(text: 'Правила Авиакомпании', onClick: () {}),
            Gap.v24,
            InformationWidget(text: 'Частые вопросы', onClick: () {}),
            Gap.v24,
            InformationWidget(text: 'Контакты', onClick: () {}),
          ],
        ),
      ),
    );
  }
}

class _InformationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(130.h);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GradientAppBar(title: 'Информация'),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [const Color(0xFFF7C8C8), AppColors.primary],
              stops: const [0.0, 1.0],
            ),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: SizedBox(
              height: 48.h,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Поиск',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  prefixIcon: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                      child: Image.asset(
                        'assets/images/search.png',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.r)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
