import 'package:auto_route/auto_route.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/router/app_router.gr.dart';
import 'package:aviatraffic/features/onboarding/domain/usecases/is_onboarding_seen_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class OnboardingGuard extends AutoRouteGuard {
  final IsOnboardingSeenUseCase _isOnboardingSeenUseCase;

  OnboardingGuard(this._isOnboardingSeenUseCase);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final result = await _isOnboardingSeenUseCase.execute(NoParams());

    result.fold(
      (failure) {
        resolver.redirect(OnboardingRoute());
      },
      (isSeen) {
        if (isSeen) {
          resolver.next(true);
        } else {
          resolver.redirect(OnboardingRoute());
        }
      },
    );
  }
}
