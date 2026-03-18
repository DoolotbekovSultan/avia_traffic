part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = _Started;
  const factory OnboardingEvent.nextPage() = _NextPage;
  const factory OnboardingEvent.previousPage() = _PreviousPage;
  const factory OnboardingEvent.skipOnboarding() = _SkipOnboarding;
  const factory OnboardingEvent.goToPage(int index) = _GoToPage;
}
