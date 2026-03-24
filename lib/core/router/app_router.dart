import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/di/injector.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/core/router/guards/onboarding_guard.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Registration Page - Architecture marker')),
    );
  }
}

@RoutePage()
class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Services Page - Architecture marker')),
    );
  }
}

@RoutePage()
class FlightStatusPage extends StatelessWidget {
  const FlightStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Flight Status Page - Architecture marker')),
    );
  }
}

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: StoriesRoute.page),
    AutoRoute(page: DealDetailRoute.page),
    AutoRoute(page: StoryDetailRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: AuthRegistrationRoute.page),

    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      initial: true,
      guards: [getIt<OnboardingGuard>()],
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'registration', page: RegistrationRoute.page),
        AutoRoute(path: 'services', page: ServicesRoute.page),
        AutoRoute(path: 'flight_status', page: FlightStatusRoute.page),
        AutoRoute(
          path: 'profile',
          page: ProfileRoute.page,
          children: [
            AutoRoute(path: '', page: ProfileShellRoute.page),
            AutoRoute(path: 'personal_data', page: PersonalDataRoute.page),
            AutoRoute(path: 'information', page: InformationRoute.page),
          ],
        ),
      ],
    ),
  ];
}
