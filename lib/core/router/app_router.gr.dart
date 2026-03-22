// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:aviatraffic/core/router/app_router.dart' as _i2;
import 'package:aviatraffic/features/home/features/deals/domain/entities/deal.dart'
    as _i10;
import 'package:aviatraffic/features/home/features/deals/presentation/pages/deal_detail_page.dart'
    as _i1;
import 'package:aviatraffic/features/home/features/stories/presentation/pages/stories_page.dart'
    as _i6;
import 'package:aviatraffic/features/home/features/stories/presentation/pages/story_detail_page.dart'
    as _i7;
import 'package:aviatraffic/features/home/presentation/home_page.dart' as _i3;
import 'package:aviatraffic/features/onboarding/presentation/pages/onboarding_page.dart'
    as _i5;
import 'package:aviatraffic/main_page.dart' as _i4;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.DealDetailPage]
class DealDetailRoute extends _i8.PageRouteInfo<DealDetailRouteArgs> {
  DealDetailRoute({
    _i9.Key? key,
    required _i10.Deal deal,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         DealDetailRoute.name,
         args: DealDetailRouteArgs(key: key, deal: deal),
         initialChildren: children,
       );

  static const String name = 'DealDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DealDetailRouteArgs>();
      return _i1.DealDetailPage(key: args.key, deal: args.deal);
    },
  );
}

class DealDetailRouteArgs {
  const DealDetailRouteArgs({this.key, required this.deal});

  final _i9.Key? key;

  final _i10.Deal deal;

  @override
  String toString() {
    return 'DealDetailRouteArgs{key: $key, deal: $deal}';
  }
}

/// generated route for
/// [_i2.FlightStatusPage]
class FlightStatusRoute extends _i8.PageRouteInfo<void> {
  const FlightStatusRoute({List<_i8.PageRouteInfo>? children})
    : super(FlightStatusRoute.name, initialChildren: children);

  static const String name = 'FlightStatusRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.FlightStatusPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainPage();
    },
  );
}

/// generated route for
/// [_i5.OnboardingPage]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute({List<_i8.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProfilePage();
    },
  );
}

/// generated route for
/// [_i2.RegistrationPage]
class RegistrationRoute extends _i8.PageRouteInfo<void> {
  const RegistrationRoute({List<_i8.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.RegistrationPage();
    },
  );
}

/// generated route for
/// [_i2.ServicesPage]
class ServicesRoute extends _i8.PageRouteInfo<void> {
  const ServicesRoute({List<_i8.PageRouteInfo>? children})
    : super(ServicesRoute.name, initialChildren: children);

  static const String name = 'ServicesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ServicesPage();
    },
  );
}

/// generated route for
/// [_i6.StoriesPage]
class StoriesRoute extends _i8.PageRouteInfo<StoriesRouteArgs> {
  StoriesRoute({
    _i9.Key? key,
    int initialIndex = 0,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         StoriesRoute.name,
         args: StoriesRouteArgs(key: key, initialIndex: initialIndex),
         initialChildren: children,
       );

  static const String name = 'StoriesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoriesRouteArgs>(
        orElse: () => const StoriesRouteArgs(),
      );
      return _i6.StoriesPage(key: args.key, initialIndex: args.initialIndex);
    },
  );
}

class StoriesRouteArgs {
  const StoriesRouteArgs({this.key, this.initialIndex = 0});

  final _i9.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'StoriesRouteArgs{key: $key, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i7.StoryDetailPage]
class StoryDetailRoute extends _i8.PageRouteInfo<StoryDetailRouteArgs> {
  StoryDetailRoute({
    _i9.Key? key,
    required int id,
    List<_i8.PageRouteInfo>? children,
  }) : super(
         StoryDetailRoute.name,
         args: StoryDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'StoryDetailRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoryDetailRouteArgs>();
      return _i7.StoryDetailPage(key: args.key, id: args.id);
    },
  );
}

class StoryDetailRouteArgs {
  const StoryDetailRouteArgs({this.key, required this.id});

  final _i9.Key? key;

  final int id;

  @override
  String toString() {
    return 'StoryDetailRouteArgs{key: $key, id: $id}';
  }
}
