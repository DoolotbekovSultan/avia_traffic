import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/features/stories/domain/usecases/get_story_by_id_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'story_bloc.freezed.dart';
part 'story_event.dart';
part 'story_state.dart';

@injectable
class StoryBloc extends BaseBloc<StoryEvent, StoryState> {
  final GetStoryByIdUsecase _getStoriesUsecase;

  StoryBloc(this._getStoriesUsecase) : super(const StoryState.initial()) {
    on<StoryEvent>(
      (event, emit) =>
          event.map(getStoryById: (_) => _getStoryById(event.id, emit)),
    );
  }

  Future<void> _getStoryById(int id, Emitter<StoryState> emit) async {
    emit(const StoryState.loading());
    final result = await _getStoriesUsecase(id);
    result.fold(
      (failure) => emit(StoryState.failure(failure: failure)),
      (story) => emit(StoryState.loaded(story: story)),
    );
  }
}
