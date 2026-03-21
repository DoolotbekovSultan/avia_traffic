import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/deals/domain/entities/deal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
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
              height: 250.h,
              child: Image.network(
                deal.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) =>
                    Container(color: const Color(0xFF3A3A5C)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    deal.title,
                    style: getIt<AppTextStyles>().headlineMediumBold.copyWith(
                      color: AppColors.onBackground,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '${deal.codeFrom} - ${deal.codeTo}',
                    style: getIt<AppTextStyles>().titleMediumBold.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  Divider(height: 32.h),
                  Html(
                    data: deal.description,
                    style: {
                      "body": Style(
                        margin: Margins.zero,
                        padding: HtmlPaddings.zero,
                        fontSize: FontSize(14.sp),
                        lineHeight: const LineHeight(1.5),
                        color: AppColors.onBackground,
                      ),
                      "p": Style(margin: Margins.only(bottom: 12)),
                      "strong": Style(fontWeight: FontWeight.bold),
                    },
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
