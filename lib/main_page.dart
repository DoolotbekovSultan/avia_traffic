import 'package:aviatraffic/core/localization/extensions/localization_context_extensions.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// active icons
const _activeHomeIconPath = 'assets/images/active_home_bottom_icon.svg';
const _activeServicesIconPath = 'assets/images/active_services_bottom_icon.svg';
const _activeRegistrationIconPath =
    'assets/images/active_registration_bottom_icon.svg';
const _activeFlightStatusIconPath =
    'assets/images/active_flight_status_bottom_icon.svg';
const _activeProfileIconPath = 'assets/images/active_profile_bottom_icon.svg';

// active icons
const _homeIconPath = 'assets/images/home_bottom_icon.svg';
const _registrationIconPath = 'assets/images/registration_bottom_icon.svg';
const _servicesIconPath = 'assets/images/services_bottom_icon.svg';
const _flightStatusIconPath = 'assets/images/flight_status_bottom_icon.svg';
const _profileIconPath = 'assets/images/profile_bottom_icon.svg';

// Временная навигация
@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AutoTabsScaffold(
      routes: [
        HomeRoute(),
        RegistrationRoute(),
        ServicesRoute(),
        FlightStatusRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: l10n.home,
              icon: BottomIcon(path: _homeIconPath),
              activeIcon: BottomIcon(path: _activeHomeIconPath),
            ),
            BottomNavigationBarItem(
              label: l10n.registration,
              icon: BottomIcon(path: _registrationIconPath),
              activeIcon: BottomIcon(path: _activeRegistrationIconPath),
            ),
            BottomNavigationBarItem(
              label: l10n.services,
              icon: BottomIcon(path: _servicesIconPath),
              activeIcon: BottomIcon(path: _activeServicesIconPath),
            ),
            BottomNavigationBarItem(
              label: l10n.flight_status,
              icon: BottomIcon(path: _flightStatusIconPath),
              activeIcon: BottomIcon(path: _activeFlightStatusIconPath),
            ),
            BottomNavigationBarItem(
              label: l10n.profile,
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
    return SvgPicture.asset(path, height: 24.h, width: 24.w);
  }
}
