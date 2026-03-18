part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;

  const factory OnboardingState.loading() = _Loading;

  const factory OnboardingState.loaded({
    required List<Page> pages,
    required int currentPageIndex,
  }) = _Loaded;

  const factory OnboardingState.failure({required Failure failure}) = _Failure;

  const factory OnboardingState.completed() = _Completed;
}
