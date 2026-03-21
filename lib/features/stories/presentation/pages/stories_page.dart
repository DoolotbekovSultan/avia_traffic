import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:aviatraffic/core/constants/widget_constants.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/app_colors.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/core/theme/text_styles/app_text_styles.dart';
import 'package:aviatraffic/features/stories/presentation/bloc/stories/stories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class StoriesPage extends StatelessWidget {
  final int initialIndex;
  const StoriesPage({super.key, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<StoriesBloc>()..add(StoriesEvent.updateIndex(initialIndex)),
      child: const _StoriesPageState(),
    );
  }
}

class _StoriesPageState extends StatefulWidget {
  const _StoriesPageState();

  @override
  State<_StoriesPageState> createState() => _StoriesPageStateState();
}

class _StoriesPageStateState extends State<_StoriesPageState>
    with TickerProviderStateMixin {
  late AnimationController _progressController;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward();
  }

  void _nextSlide() {
    context.read<StoriesBloc>().add(const StoriesEvent.nextStory());
  }

  void _prevSlide() {
    context.read<StoriesBloc>().add(const StoriesEvent.previousStory());
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return BlocConsumer<StoriesBloc, StoriesState>(
      listener: (context, state) {
        state.mapOrNull(
          loaded: (s) {
            _progressController.reset();
            _progressController.forward();
          },
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => const Scaffold(backgroundColor: Colors.black),
          loading: (_) => const Scaffold(
            backgroundColor: Colors.black,
            body: Center(child: CircularProgressIndicator()),
          ),
          failure: (s) => Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Text(
                s.failure.userMessage,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          loaded: (s) {
            final slides = s.stories;
            final currentIndex = s.currentIndex;
            final slide = slides[currentIndex];

            return Scaffold(
              backgroundColor: Colors.black,
              body: AnnotatedRegion<SystemUiOverlayStyle>(
                value: SystemUiOverlayStyle.light,
                child: SafeArea(
                  child: GestureDetector(
                    onTapUp: (details) {
                      final screenWidth = MediaQuery.of(context).size.width;
                      if (details.globalPosition.dx < screenWidth / 2) {
                        _prevSlide();
                      } else {
                        _nextSlide();
                      }
                    },
                    child: Stack(
                      children: [
                        Container(color: Colors.black),
                        Column(
                          children: [
                            Expanded(
                              flex: 55,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    slide.imageUrl,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) => Container(
                                      color: const Color(0xFF1A1A2E),
                                      child: const Icon(
                                        Icons.image,
                                        color: Colors.white38,
                                        size: 80,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: .topCenter,
                                    child: Container(
                                      height: 100.h,
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: .topCenter,
                                          end: .bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Colors.transparent,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    height: 120,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 12.h,
                                    left: 12.w,
                                    right: 12.w,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: List.generate(
                                            slides.length,
                                            (index) => Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 2.w,
                                                ),
                                                child: _StoryIndicator(
                                                  isActive:
                                                      index == currentIndex,
                                                  isDone: index < currentIndex,
                                                  controller:
                                                      index == currentIndex
                                                      ? _progressController
                                                      : null,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Gap.v10,
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () =>
                                                context.router.maybePop(),
                                            child: SvgPicture.asset(
                                              'assets/images/stories_close.svg',
                                              width: 32.w,
                                              height: 32.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 45,
                              child: Container(
                                color: Colors.black,
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  0,
                                  20,
                                  24,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      slide.title,
                                      overflow: TextOverflow.ellipsis,
                                      style: getIt<AppTextStyles>()
                                          .displaySmallBold
                                          .copyWith(color: Colors.white),
                                      maxLines: 2,
                                    ),
                                    Gap.v16,
                                    Expanded(
                                      child: SingleChildScrollView(
                                        physics: const BouncingScrollPhysics(),
                                        child: Text(
                                          slide.detailed,
                                          style: getIt<AppTextStyles>()
                                              .bodyMediumSemiBold
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Gap.v16,
                                    Padding(
                                      padding: .all(
                                        WidgetConstants.mediumPadding,
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 56.h,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            context.router.push(
                                              StoryDetailRoute(id: slide.id),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColors.primary,
                                          ),
                                          child: Text('Подробнее'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _StoryIndicator extends StatelessWidget {
  final bool isActive;
  final bool isDone;
  final AnimationController? controller;

  const _StoryIndicator({
    required this.isActive,
    required this.isDone,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.white.withValues(alpha: 0.3),
      ),
      child: isActive && controller != null
          ? AnimatedBuilder(
              animation: controller!,
              builder: (_, __) => FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: controller!.value,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                  ),
                ),
              ),
            )
          : isDone
          ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
