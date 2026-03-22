import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class AppHtml extends StatelessWidget {
  final String data;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Map<String, Style>? style;

  const AppHtml({
    super.key,
    required this.data,
    this.physics,
    this.shrinkWrap = false,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final textStyles = getIt<AppTextStyles>();

    return Html(
      data: data,
      shrinkWrap: shrinkWrap,
      onLinkTap: (url, _, __) {
        if (url != null) {
          launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
        }
      },
      style: {
        "body": Style.fromTextStyle(textStyles.bodyMediumSemiBold),
        "p": Style(margin: Margins.only(bottom: 24.h)),
        "strong": Style.fromTextStyle(textStyles.bodyMediumBold),
        "h1": Style.fromTextStyle(textStyles.headlineLargeBold),
        "h2": Style.fromTextStyle(textStyles.headlineMediumBold),
        "h3": Style.fromTextStyle(textStyles.headlineSmallBold),
        "a": Style(
          color: AppColors.primaryLight,
          textDecoration: TextDecoration.underline,
        ),
        ...?style,
      },
    );
  }
}
