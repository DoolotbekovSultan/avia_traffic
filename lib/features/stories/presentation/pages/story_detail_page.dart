import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/stories/presentation/bloc/story/story_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class StoryDetailPage extends StatelessWidget {
  final int id;
  final StoryBloc bloc;

  StoryDetailPage({super.key, required this.id})
    : bloc = getIt<StoryBloc>()..add(StoryEvent.getStoryById(id));

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryBloc, StoryState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (story) {
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
                  story.title,
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
                            story.imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (_, _, _) =>
                                Container(color: const Color(0xFF3A3A5C)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.sp),
                      child: Center(
                        child: Text(
                          story.title,
                          style: getIt<AppTextStyles>().headlineLargeBold
                              .copyWith(color: AppColors.onBackground),
                        ),
                      ),
                    ),
                    Gap.v16,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.sp),
                      child: Text(
                        story.detailed,
                        style: getIt<AppTextStyles>().bodyLargeSemiBold
                            .copyWith(
                              fontSize: 15.sp,
                              color: AppColors.onBackground,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 24.h,
                      ),
                      child: Html(
                        data: story.description,
                        style: {
                          "body": Style(
                            fontSize: FontSize(15.sp),
                            color: AppColors.onBackground,
                            fontWeight: FontWeight.w600,
                            fontFamily: getIt<AppTextStyles>()
                                .bodyLargeSemiBold
                                .fontFamily,
                            padding: HtmlPaddings.zero,
                            margin: Margins.zero,
                          ),
                          "p": Style(margin: Margins.only(bottom: 8)),
                          "a": Style(
                            color: Colors.blue,
                            textDecoration: TextDecoration.underline,
                          ),
                        },
                        onLinkTap: (url, _, __) {
                          if (url != null) launchUrl(Uri.parse(url));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          failure: (messange) => Center(child: Text(messange.userMessage)),
        );
      },
    );
  }
}
