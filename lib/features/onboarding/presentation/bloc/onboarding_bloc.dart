import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/onboarding/domain/entities/page.dart';
import 'package:aviatraffic/features/onboarding/domain/usecases/get_pages_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

@lazySingleton
class OnboardingBloc extends BaseBloc<OnboardingEvent, OnboardingState> {
  final GetPagesUsecase _getPagesUsecase;

  OnboardingBloc({required GetPagesUsecase getPagesUsecase})
    : _getPagesUsecase = getPagesUsecase,
      super(const OnboardingState.initial()) {
    on<OnboardingEvent>(
      (event, emit) => event.map(
        started: (_) => _onStarted(emit),
        nextPage: (_) => _onNextPage(emit),
        previousPage: (_) => _onPreviousPage(emit),
        skipOnboarding: (_) => _onSkipOnboarding(emit),
        goToPage: (e) => _onGoToPage(emit, e.index),
      ),
    );
  }

  Future<void> _onStarted(Emitter<OnboardingState> emit) async {
    emit(const OnboardingState.loading());

    final result = await _getPagesUsecase.execute(NoParams());

    result.fold(
      (failure) => emit(OnboardingState.failure(failure: failure)),
      (pages) =>
          emit(OnboardingState.loaded(pages: pages, currentPageIndex: 0)),
    );
  }

  void _onNextPage(Emitter<OnboardingState> emit) {
    final currentState = state;

    currentState.mapOrNull(
      loaded: (loadedState) {
        final isLastPage =
            loadedState.currentPageIndex == loadedState.pages.length - 1;

        if (isLastPage) {
          emit(const OnboardingState.completed());
        } else {
          emit(
            loadedState.copyWith(
              currentPageIndex: loadedState.currentPageIndex + 1,
            ),
          );
        }
      },
    );
  }

  void _onPreviousPage(Emitter<OnboardingState> emit) {
    final currentState = state;

    currentState.mapOrNull(
      loaded: (loadedState) {
        if (loadedState.currentPageIndex > 0) {
          emit(
            loadedState.copyWith(
              currentPageIndex: loadedState.currentPageIndex - 1,
            ),
          );
        }
      },
    );
  }

  void _onSkipOnboarding(Emitter<OnboardingState> emit) {
    emit(const OnboardingState.completed());
  }

  void _onGoToPage(Emitter<OnboardingState> emit, int index) {
    final currentState = state;

    currentState.mapOrNull(
      loaded: (loadedState) {
        final isValidIndex = index >= 0 && index < loadedState.pages.length;

        if (isValidIndex) {
          emit(loadedState.copyWith(currentPageIndex: index));
        }
      },
    );
  }
}
