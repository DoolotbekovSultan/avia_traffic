import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/deals/domain/entities/deal.dart';
import 'package:aviatraffic/shared/presentation/widgets/app_html.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DealDetailPage extends StatelessWidget {
  final Deal deal;

  const DealDetailPage({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 24.w),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          deal.title,
          style: textStyles.titleLargeBold.copyWith(
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
              height: 216.h,
              child: Image.network(
                deal.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) =>
                    Container(color: AppColors.neutral500),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deal.title,
                    style: textStyles.displaySmallBold.copyWith(
                      color: AppColors.onBackground,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.h),
                    child: AppHtml(data: deal.description),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
