import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/stories/presentation/bloc/story/story_bloc.dart';
import 'package:aviatraffic/shared/presentation/widgets/app_html.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class StoryDetailPage extends StatelessWidget {
  final int id;
  final StoryBloc bloc;

  StoryDetailPage({super.key, required this.id})
    : bloc = getIt<StoryBloc>()..add(StoryEvent.getStoryById(id));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StoryBloc, StoryState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
            loaded: (story) {
              final textStyles = getIt<AppTextStyles>();
              return Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/back_arrow.svg',
                      width: 24.w,
                      height: 24.h,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  title: Text(
                    story.title,
                    style: textStyles.titleLargeBold.copyWith(
                      color: AppColors.onBackground,
                    ),
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 216.h,
                        child: Image.network(
                          story.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) =>
                              Container(color: AppColors.neutral500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Center(
                          child: Text(
                            story.title,
                            style: textStyles.displaySmallBold.copyWith(
                              color: AppColors.onBackground,
                            ),
                          ),
                        ),
                      ),
                      Gap.v16,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.sp),
                        child: Text(
                          story.detailed,
                          style: textStyles.bodyMediumSemiBold.copyWith(
                            color: AppColors.onBackground,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 24.h,
                        ),
                        child: AppHtml(data: story.description),
                      ),
                    ],
                  ),
                ),
              );
            },
            failure: (message) => Center(child: Text(message.userMessage)),
          );
        },
      ),
    );
  }
}
