import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/features/stories/presentation/bloc/stories/stories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<StoriesBloc>()..add(const StoriesEvent.started()),
      child: const _StoriesWidgetState(),
    );
  }
}

class _StoriesWidgetState extends StatelessWidget {
  const _StoriesWidgetState();

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final titleStyle = tt.titleLarge?.copyWith(
      fontWeight: FontWeight.w700,
      color: AppColors.onBackground,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Последние новости', style: titleStyle),
        ),
        Gap.v12,
        SizedBox(
          height: 120.h,
          child: BlocBuilder<StoriesBloc, StoriesState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const _Loading(),
                loading: (_) => const _Loading(),
                failure: (f) => Center(child: Text(f.failure.userMessage)),
                loaded: (s) => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: s.stories.length,
                  itemBuilder: (context, i) => Padding(
                    padding: EdgeInsets.only(
                      right: i < s.stories.length - 1 ? 12.w : 0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        context.router.push(StoriesRoute(initialIndex: i));
                      },
                      child: _StoryCard(item: s.stories[i], selected: i == 0),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();
  @override
  Widget build(BuildContext context) =>
      const Center(child: CircularProgressIndicator());
}

class _StoryCard extends StatelessWidget {
  final StoryItem item;
  final bool selected;

  const _StoryCard({required this.item, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 107.w,
      height: 107.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(color: AppColors.neutral200),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.65),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(
                item.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getIt<AppTextStyles>().caption.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
