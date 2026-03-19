import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/failure/failure_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviatraffic/core/theme/gap.dart';
import 'package:aviatraffic/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:aviatraffic/features/onboarding/domain/entities/page.dart'
    as entity;

@RoutePage()
class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<OnboardingBloc>()..add(const OnboardingEvent.started()),
      child: const _OnboardingPageView(),
    );
  }
}

class _OnboardingPageView extends StatefulWidget {
  const _OnboardingPageView();

  @override
  State<_OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<_OnboardingPageView>
    with TickerProviderStateMixin {
  late final PageController _pageController;
  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  bool _isReady = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  void _animateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeInOutCubic,
    );
  }

  Future<void> _preloadImages(List<entity.Page> pages) async {
    for (final page in pages) {
      await precacheImage(NetworkImage(page.imageUrl), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        state.mapOrNull(
          loaded: (s) async {
            await _preloadImages(s.pages);

            if (!mounted) return;

            setState(() {
              _isReady = true;
            });
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (_pageController.hasClients) {
                _animateToPage(s.currentPageIndex);
              }
            });
          },
          completed: (_) {
            context.router.replace(const HomeRoute());
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.map(
            initial: (_) => const SizedBox.shrink(),
            loading: (_) => const _LoadingView(),
            loaded: (s) {
              if (!_isReady) return _LoadingView();
              return _LoadedView(
                pages: s.pages,
                currentIndex: s.currentPageIndex,
                pageController: _pageController,
                fadeAnimation: _fadeAnimation,
              );
            },
            failure: (s) => _FailureView(message: s.failure.userMessage),
            completed: (_) => const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.primary,
        strokeWidth: 2,
      ),
    );
  }
}

class _FailureView extends StatelessWidget {
  final String message;
  const _FailureView({required this.message});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off_rounded,
              size: 48.r,
              color: Theme.of(context).colorScheme.primary,
            ),
            Gap.v24,
            Text(message, textAlign: TextAlign.center, style: tt.bodyLarge),
            Gap.v32,
          ],
        ),
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  final List<entity.Page> pages;
  final int currentIndex;
  final PageController pageController;
  final Animation<double> fadeAnimation;

  const _LoadedView({
    required this.pages,
    required this.currentIndex,
    required this.pageController,
    required this.fadeAnimation,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OnboardingBloc>();

    return Scaffold(
      body: FadeTransition(
        opacity: fadeAnimation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pages.length,
                itemBuilder: (_, i) => _OnboardingPageItem(page: pages[i]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: 7.h,
          left: Gap.s16.w,
          right: Gap.s16.w,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  bloc.add(OnboardingEvent.skipOnboarding());
                },
                child: Text("Закрыть"),
              ),
              _DotsIndicator(count: pages.length, currentIndex: currentIndex),
              TextButton(
                onPressed: () {
                  bloc.add(OnboardingEvent.nextPage());
                },
                child: Text("Далее"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingPageItem extends StatelessWidget {
  final entity.Page page;
  const _OnboardingPageItem({required this.page});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return Column(
      children: [
        Image.network(
          page.imageUrl,
          height: 456.h,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(
            height: 456.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Icon(
              Icons.flight_rounded,
              size: 64.r,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Gap.v48,
        Text(
          page.title,
          textAlign: TextAlign.center,
          style: tt.headlineSmall?.copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),

        Gap.v10,
        Text(
          page.description,
          textAlign: TextAlign.center,
          style: tt.titleMedium,
        ),
      ],
    );
  }
}

class _DotsIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;
  const _DotsIndicator({required this.count, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final isActive = i <= currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: isActive ? 10.w : 10.w,
          height: 10.h,
          decoration: BoxDecoration(
            color: isActive ? cs.primary : cs.surfaceContainer,
            borderRadius: BorderRadius.circular(4.r),
          ),
        );
      }),
    );
  }
}
