import 'package:aviatraffic/core/constants/widget_constants.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';

// active icons
const _activeHomeIconPath = 'assets/images/active_home_bottom_icon.svg';
const _activeProfileIconPath = 'assets/images/active_profile_bottom_icon.svg';

// active icons
const _homeIconPath = 'assets/images/home_bottom_icon.svg';
const _profileIconPath = 'assets/images/profile_bottom_icon.svg';

// Временная навигация
@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [HomeRoute(), ProfileRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: BottomIcon(path: _homeIconPath),
              activeIcon: BottomIcon(path: _activeHomeIconPath),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: BottomIcon(path: _profileIconPath),
              activeIcon: BottomIcon(path: _activeProfileIconPath),
            ),
          ],
        );
      },
    );
  }
}

class BottomIcon extends StatelessWidget {
  final String path;
  const BottomIcon({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: WidgetConstants.bottomIcomSize,
      width: WidgetConstants.bottomIcomSize,
    );
  }
}
