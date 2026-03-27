// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:aviatraffic/core/router/app_router.dart' as _i4;
import 'package:aviatraffic/features/auth/presentation/pages/auth_registration_page.dart'
    as _i1;
import 'package:aviatraffic/features/auth/presentation/pages/confirm_code_page.dart'
    as _i2;
import 'package:aviatraffic/features/auth/presentation/pages/forgot_password_page.dart'
    as _i5;
import 'package:aviatraffic/features/auth/presentation/pages/login_page.dart'
    as _i8;
import 'package:aviatraffic/features/auth/presentation/pages/recovery_password_page.dart'
    as _i13;
import 'package:aviatraffic/features/home/features/deals/domain/entities/deal.dart'
    as _i18;
import 'package:aviatraffic/features/home/features/deals/presentation/pages/deal_detail_page.dart'
    as _i3;
import 'package:aviatraffic/features/home/features/stories/presentation/pages/stories_page.dart'
    as _i14;
import 'package:aviatraffic/features/home/features/stories/presentation/pages/story_detail_page.dart'
    as _i15;
import 'package:aviatraffic/features/home/presentation/home_page.dart' as _i6;
import 'package:aviatraffic/features/onboarding/presentation/pages/onboarding_page.dart'
    as _i10;
import 'package:aviatraffic/features/profile/information_page.dart' as _i7;
import 'package:aviatraffic/features/profile/personal_data_page.dart' as _i11;
import 'package:aviatraffic/features/profile/profile_page.dart' as _i12;
import 'package:aviatraffic/main_page.dart' as _i9;
import 'package:flutter/material.dart' as _i17;

/// generated route for
/// [_i1.AuthRegistrationPage]
class AuthRegistrationRoute extends _i16.PageRouteInfo<void> {
  const AuthRegistrationRoute({List<_i16.PageRouteInfo>? children})
    : super(AuthRegistrationRoute.name, initialChildren: children);

  static const String name = 'AuthRegistrationRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthRegistrationPage();
    },
  );
}

/// generated route for
/// [_i2.ConfirmCodePage]
class ConfirmCodeRoute extends _i16.PageRouteInfo<ConfirmCodeRouteArgs> {
  ConfirmCodeRoute({
    _i17.Key? key,
    required String title,
    required String email,
    required Function onSuccess,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         ConfirmCodeRoute.name,
         args: ConfirmCodeRouteArgs(
           key: key,
           title: title,
           email: email,
           onSuccess: onSuccess,
         ),
         initialChildren: children,
       );

  static const String name = 'ConfirmCodeRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmCodeRouteArgs>();
      return _i2.ConfirmCodePage(
        key: args.key,
        title: args.title,
        email: args.email,
        onSuccess: args.onSuccess,
      );
    },
  );
}

class ConfirmCodeRouteArgs {
  const ConfirmCodeRouteArgs({
    this.key,
    required this.title,
    required this.email,
    required this.onSuccess,
  });

  final _i17.Key? key;

  final String title;

  final String email;

  final Function onSuccess;

  @override
  String toString() {
    return 'ConfirmCodeRouteArgs{key: $key, title: $title, email: $email, onSuccess: $onSuccess}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmCodeRouteArgs) return false;
    return key == other.key &&
        title == other.title &&
        email == other.email &&
        onSuccess == other.onSuccess;
  }

  @override
  int get hashCode =>
      key.hashCode ^ title.hashCode ^ email.hashCode ^ onSuccess.hashCode;
}

/// generated route for
/// [_i3.DealDetailPage]
class DealDetailRoute extends _i16.PageRouteInfo<DealDetailRouteArgs> {
  DealDetailRoute({
    _i17.Key? key,
    required _i18.Deal deal,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         DealDetailRoute.name,
         args: DealDetailRouteArgs(key: key, deal: deal),
         initialChildren: children,
       );

  static const String name = 'DealDetailRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DealDetailRouteArgs>();
      return _i3.DealDetailPage(key: args.key, deal: args.deal);
    },
  );
}

class DealDetailRouteArgs {
  const DealDetailRouteArgs({this.key, required this.deal});

  final _i17.Key? key;

  final _i18.Deal deal;

  @override
  String toString() {
    return 'DealDetailRouteArgs{key: $key, deal: $deal}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DealDetailRouteArgs) return false;
    return key == other.key && deal == other.deal;
  }

  @override
  int get hashCode => key.hashCode ^ deal.hashCode;
}

/// generated route for
/// [_i4.FlightStatusPage]
class FlightStatusRoute extends _i16.PageRouteInfo<void> {
  const FlightStatusRoute({List<_i16.PageRouteInfo>? children})
    : super(FlightStatusRoute.name, initialChildren: children);

  static const String name = 'FlightStatusRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i4.FlightStatusPage();
    },
  );
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i16.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i16.PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i5.ForgotPasswordPage();
    },
  );
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomePage();
    },
  );
}

/// generated route for
/// [_i7.InformationPage]
class InformationRoute extends _i16.PageRouteInfo<void> {
  const InformationRoute({List<_i16.PageRouteInfo>? children})
    : super(InformationRoute.name, initialChildren: children);

  static const String name = 'InformationRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.InformationPage();
    },
  );
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoginPage();
    },
  );
}

/// generated route for
/// [_i9.MainPage]
class MainRoute extends _i16.PageRouteInfo<void> {
  const MainRoute({List<_i16.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.MainPage();
    },
  );
}

/// generated route for
/// [_i10.OnboardingPage]
class OnboardingRoute extends _i16.PageRouteInfo<void> {
  const OnboardingRoute({List<_i16.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i10.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i11.PersonalDataPage]
class PersonalDataRoute extends _i16.PageRouteInfo<void> {
  const PersonalDataRoute({List<_i16.PageRouteInfo>? children})
    : super(PersonalDataRoute.name, initialChildren: children);

  static const String name = 'PersonalDataRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i11.PersonalDataPage();
    },
  );
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute({List<_i16.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.ProfilePage();
    },
  );
}

/// generated route for
/// [_i12.ProfileShellPage]
class ProfileShellRoute extends _i16.PageRouteInfo<void> {
  const ProfileShellRoute({List<_i16.PageRouteInfo>? children})
    : super(ProfileShellRoute.name, initialChildren: children);

  static const String name = 'ProfileShellRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.ProfileShellPage();
    },
  );
}

/// generated route for
/// [_i13.RecoveryPasswordPage]
class RecoveryPasswordRoute extends _i16.PageRouteInfo<void> {
  const RecoveryPasswordRoute({List<_i16.PageRouteInfo>? children})
    : super(RecoveryPasswordRoute.name, initialChildren: children);

  static const String name = 'RecoveryPasswordRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i13.RecoveryPasswordPage();
    },
  );
}

/// generated route for
/// [_i4.RegistrationPage]
class RegistrationRoute extends _i16.PageRouteInfo<void> {
  const RegistrationRoute({List<_i16.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i4.RegistrationPage();
    },
  );
}

/// generated route for
/// [_i4.ServicesPage]
class ServicesRoute extends _i16.PageRouteInfo<void> {
  const ServicesRoute({List<_i16.PageRouteInfo>? children})
    : super(ServicesRoute.name, initialChildren: children);

  static const String name = 'ServicesRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i4.ServicesPage();
    },
  );
}

/// generated route for
/// [_i14.StoriesPage]
class StoriesRoute extends _i16.PageRouteInfo<StoriesRouteArgs> {
  StoriesRoute({
    _i17.Key? key,
    int initialIndex = 0,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         StoriesRoute.name,
         args: StoriesRouteArgs(key: key, initialIndex: initialIndex),
         initialChildren: children,
       );

  static const String name = 'StoriesRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoriesRouteArgs>(
        orElse: () => const StoriesRouteArgs(),
      );
      return _i14.StoriesPage(key: args.key, initialIndex: args.initialIndex);
    },
  );
}

class StoriesRouteArgs {
  const StoriesRouteArgs({this.key, this.initialIndex = 0});

  final _i17.Key? key;

  final int initialIndex;

  @override
  String toString() {
    return 'StoriesRouteArgs{key: $key, initialIndex: $initialIndex}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StoriesRouteArgs) return false;
    return key == other.key && initialIndex == other.initialIndex;
  }

  @override
  int get hashCode => key.hashCode ^ initialIndex.hashCode;
}

/// generated route for
/// [_i15.StoryDetailPage]
class StoryDetailRoute extends _i16.PageRouteInfo<StoryDetailRouteArgs> {
  StoryDetailRoute({
    _i17.Key? key,
    required int id,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         StoryDetailRoute.name,
         args: StoryDetailRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'StoryDetailRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoryDetailRouteArgs>();
      return _i15.StoryDetailPage(key: args.key, id: args.id);
    },
  );
}

class StoryDetailRouteArgs {
  const StoryDetailRouteArgs({this.key, required this.id});

  final _i17.Key? key;

  final int id;

  @override
  String toString() {
    return 'StoryDetailRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StoryDetailRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}
