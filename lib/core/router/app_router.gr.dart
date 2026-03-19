// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:aviatraffic/features/deals/domain/entities/deal.dart' as _i8;
import 'package:aviatraffic/features/deals/presentation/pages/deal_detail_page.dart'
    as _i1;
import 'package:aviatraffic/features/home/presentation/home_page.dart' as _i2;
import 'package:aviatraffic/features/onboarding/presentation/pages/onboarding_page.dart'
    as _i3;
import 'package:aviatraffic/features/stories/presentation/pages/stories_page.dart'
    as _i4;
import 'package:aviatraffic/features/stories/presentation/pages/story_detail_page.dart'
    as _i5;
import 'package:flutter/material.dart' as _i7;

/// generated route for
/// [_i1.DealDetailPage]
class DealDetailRoute extends _i6.PageRouteInfo<DealDetailRouteArgs> {
  DealDetailRoute({
    _i7.Key? key,
    required _i8.Deal deal,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         DealDetailRoute.name,
         args: DealDetailRouteArgs(key: key, deal: deal),
         initialChildren: children,
       );

  static const String name = 'DealDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DealDetailRouteArgs>();
      return _i1.DealDetailPage(key: args.key, deal: args.deal);
    },
  );
}

class DealDetailRouteArgs {
  const DealDetailRouteArgs({this.key, required this.deal});

  final _i7.Key? key;

  final _i8.Deal deal;

  @override
  String toString() {
    return 'DealDetailRouteArgs{key: $key, deal: $deal}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingPage]
class OnboardingRoute extends _i6.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i7.Key? key, List<_i6.PageRouteInfo>? children})
    : super(
        OnboardingRoute.name,
        args: OnboardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnboardingRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return _i3.OnboardingPage(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.StoriesPage]
class StoriesRoute extends _i6.PageRouteInfo<StoriesRouteArgs> {
  StoriesRoute({
    _i7.Key? key,
    int initialIndex = 0,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         StoriesRoute.name,
         args: StoriesRouteArgs(key: key, initialIndex: initialIndex),
         initialChildren: children,
       );

  static const String name = 'StoriesRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoriesRouteArgs>(
        orElse: () => const StoriesRouteArgs(),
      );
      return _i4.StoriesPage(key: args.key, initialIndex: args.initialIndex);
    },
  );
}

class StoriesRouteArgs {
  const StoriesRouteArgs({this.key, this.initialIndex = 0});

  final _i7.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'StoriesRouteArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i5.StoryDetailPage]
class StoryDetailRoute extends _i6.PageRouteInfo<StoryDetailRouteArgs> {
  StoryDetailRoute({
    _i7.Key? key,
    required int id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         StoryDetailRoute.name,
         args: StoryDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'StoryDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoryDetailRouteArgs>();
      return _i5.StoryDetailPage(key: args.key, id: args.id);
    },
  );
}

class StoryDetailRouteArgs {
  const StoryDetailRouteArgs({this.key, required this.id});

  final _i7.Key? key;

  final int id;

  @override
  String toString() {
    return 'StoryDetailRouteArgs{key: $key, id: $id}';
  }
}
