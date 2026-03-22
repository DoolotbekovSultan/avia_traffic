import 'dart:async';

import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/home/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/home/features/stories/domain/usecases/get_stories_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stories_bloc.freezed.dart';
part 'stories_event.dart';
part 'stories_state.dart';

@lazySingleton
class StoriesBloc extends BaseBloc<StoriesEvent, StoriesState> {
  final GetStoriesUsecase _getStoriesUsecase;
  Timer? _timer;

  StoriesBloc(this._getStoriesUsecase) : super(const StoriesState.initial()) {
    on<StoriesEvent>(
      (event, emit) => event.map(
        started: (_) => _onStarted(emit),
        updateIndex: (e) => _onUpdateIndex(e.index, emit),
        nextStory: (_) => _onNextStory(emit),
        previousStory: (_) => _onPreviousStory(emit),
      ),
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (_) {
      add(const StoriesEvent.nextStory());
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  Future<void> _onStarted(Emitter<StoriesState> emit) async {
    emit(const StoriesState.loading());
    final result = await _getStoriesUsecase(NoParams());
    result.fold((failure) => emit(StoriesState.failure(failure: failure)), (
      stories,
    ) {
      emit(StoriesState.loaded(stories: stories));
      _startTimer();
    });
  }

  void _onUpdateIndex(int index, Emitter<StoriesState> emit) {
    state.mapOrNull(
      loaded: (s) {
        if (index >= 0 && index < s.stories.length) {
          emit(s.copyWith(currentIndex: index));
          _startTimer();
        }
      },
    );
  }

  void _onNextStory(Emitter<StoriesState> emit) {
    state.mapOrNull(
      loaded: (s) {
        if (s.currentIndex < s.stories.length - 1) {
          emit(s.copyWith(currentIndex: s.currentIndex + 1));
          _startTimer();
        } else {
          // Loop back to start if needed, or stop
          emit(s.copyWith(currentIndex: 0));
          _startTimer();
        }
      },
    );
  }

  void _onPreviousStory(Emitter<StoriesState> emit) {
    state.mapOrNull(
      loaded: (s) {
        if (s.currentIndex > 0) {
          emit(s.copyWith(currentIndex: s.currentIndex - 1));
          _startTimer();
        }
      },
    );
  }
}
