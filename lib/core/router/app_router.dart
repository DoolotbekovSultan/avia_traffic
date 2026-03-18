import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: StoriesRoute.page),
  ];
}
