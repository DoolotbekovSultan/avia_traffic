import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/home/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/features/home/features/stories/presentation/bloc/stories/stories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<StoriesBloc>()..add(const StoriesEvent.started()),
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
                loaded: (s) => _StoriesList(
                  stories: s.stories,
                  currentIndex: s.currentIndex,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _StoriesList extends StatefulWidget {
  final List<StoryItem> stories;
  final int currentIndex;

  const _StoriesList({required this.stories, required this.currentIndex});

  @override
  State<StatefulWidget> createState() => _StoriesListState();
}

class _StoriesListState extends State<_StoriesList> {
  late final ScrollController _scrollController;

  static const double _cardWidth = 107.0;
  static const double _cardSpacing = 12.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToIndex(widget.currentIndex, animated: false);
    });
  }

  @override
  void didUpdateWidget(_StoriesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentIndex != widget.currentIndex) {
      _scrollToIndex(widget.currentIndex);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToIndex(int index, {bool animated = true}) {
    if (!_scrollController.hasClients) return;

    final offset = index * (_cardWidth.w + _cardSpacing.w);
    final maxScroll = _scrollController.position.maxScrollExtent;

    if (offset > maxScroll) {
      if (animated) {
        _scrollController.animateTo(
          maxScroll,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _scrollController.jumpTo(maxScroll);
      }
    } else {
      if (animated) {
        _scrollController.animateTo(
          offset,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        _scrollController.jumpTo(offset);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: widget.stories.length,
      itemBuilder: (context, i) => Padding(
        padding: EdgeInsets.only(
          right: i < widget.stories.length - 1 ? 12.w : 0,
        ),
        child: GestureDetector(
          onTap: () {
            context.read<StoriesBloc>().add(StoriesEvent.updateIndex(i));
            context.router.push(StoriesRoute(initialIndex: i));
          },
          child: _StoryCard(
            item: widget.stories[i],
            selected: i == widget.currentIndex,
          ),
        ),
      ),
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
      padding: .all(2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: .all(
          color: selected ? AppColors.primary : AppColors.neutral200,
          width: 1.5.w,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
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
                  height: 16 / 13,
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
