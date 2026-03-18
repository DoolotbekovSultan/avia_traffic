import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/deals/domain/entities/deal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DealDetailPage extends StatelessWidget {
  final Deal deal;

  const DealDetailPage({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 24.w),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          deal.title,
          style: getIt<AppTextStyles>().titleLargeBold.copyWith(
            color: AppColors.onBackground,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200.h,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    deal.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) =>
                        Container(color: const Color(0xFF3A3A5C)),
                  ),
                  Center(
                    child: Text(
                      deal.title,
                      style: getIt<AppTextStyles>().headlineLargeBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Text(
                deal.description,
                style: getIt<AppTextStyles>().bodyLargeSemiBold.copyWith(
                  color: AppColors.onBackground,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
