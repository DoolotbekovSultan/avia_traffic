import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/features/stories/presentation/bloc/stories/stories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class StoriesPage extends StatelessWidget {
  final int initialIndex;
  const StoriesPage({super.key, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<StoriesBloc>()..add(const StoriesEvent.started()),
      child: _StoriesPageState(initialIndex: initialIndex),
    );
  }
}

class _StoriesPageState extends StatefulWidget {
  final int initialIndex;
  const _StoriesPageState({required this.initialIndex});

  @override
  State<_StoriesPageState> createState() => _StoriesPageStateState();
}

class _StoriesPageStateState extends State<_StoriesPageState>
    with TickerProviderStateMixin {
  late int _currentSlide;
  late AnimationController _progressController;

  @override
  void initState() {
    super.initState();
    _currentSlide = widget.initialIndex;
    _progressController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _nextSlide();
            }
          });
  }

  void _nextSlide() {
    final state = context.read<StoriesBloc>().state;
    state.mapOrNull(
      loaded: (s) {
        if (_currentSlide < s.stories.length - 1) {
          setState(() {
            _currentSlide++;
          });
          _progressController.reset();
          _progressController.forward();
        } else {
          context.router.maybePop();
        }
      },
    );
  }

  void _prevSlide() {
    if (_currentSlide > 0) {
      setState(() {
        _currentSlide--;
      });
      _progressController.reset();
      _progressController.forward();
    }
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return BlocBuilder<StoriesBloc, StoriesState>(
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
            if (!_progressController.isAnimating &&
                _progressController.status != AnimationStatus.completed) {
              _progressController.forward();
            }

            final slide = slides[_currentSlide];

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
                                    top: 12,
                                    left: 12,
                                    right: 12,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: List.generate(
                                            slides.length,
                                            (index) => Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 2,
                                                    ),
                                                child: _StoryIndicator(
                                                  isActive:
                                                      index == _currentSlide,
                                                  isDone: index < _currentSlide,
                                                  controller:
                                                      index == _currentSlide
                                                      ? _progressController
                                                      : null,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () =>
                                                context.router.maybePop(),
                                            child: Container(
                                              width: 32,
                                              height: 32,
                                              decoration: BoxDecoration(
                                                color: Colors.black.withValues(
                                                  alpha: 0.4,
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.close,
                                                color: Colors.white,
                                                size: 18,
                                              ),
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
                                    SizedBox(
                                      height: 65.h,
                                      child: AutoSizeText(
                                        slide.title,
                                        style: tt.headlineLarge?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Gap.h16,
                                    Expanded(
                                      child: SingleChildScrollView(
                                        physics: const BouncingScrollPhysics(),
                                        child: Text(
                                          slide.detailed,
                                          style: tt.bodyLarge?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white.withValues(
                                              alpha: 0.75,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 56,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          context.router.push(
                                            StoryDetailRoute(id: slide.id),
                                          );
                                        },
                                        child: Text(
                                          'Подробнее',
                                          style: tt.titleMedium?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
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
