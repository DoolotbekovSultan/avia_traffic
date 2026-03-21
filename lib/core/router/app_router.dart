import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Profile Page - Architecture marker')),
    );
  }
}

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: StoriesRoute.page),
    AutoRoute(page: DealDetailRoute.page),
    AutoRoute(page: StoryDetailRoute.page),

    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: "profile", page: ProfileRoute.page),
      ],
    ),
  ];
}
