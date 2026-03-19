import 'package:aviatraffic/core/base_bloc.dart';
import 'package:aviatraffic/core/common/base_usecase/no_params.dart';
import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';
import 'package:aviatraffic/features/stories/domain/usecases/get_stories_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stories_bloc.freezed.dart';
part 'stories_event.dart';
part 'stories_state.dart';

@injectable
class StoriesBloc extends BaseBloc<StoriesEvent, StoriesState> {
  final GetStoriesUsecase _getStoriesUsecase;

  StoriesBloc(this._getStoriesUsecase) : super(const StoriesState.initial()) {
    on<StoriesEvent>(
      (event, emit) => event.map(started: (_) => _onStarted(emit)),
    );
  }

  Future<void> _onStarted(Emitter<StoriesState> emit) async {
    emit(const StoriesState.loading());
    final result = await _getStoriesUsecase(NoParams());
    result.fold(
      (failure) => emit(StoriesState.failure(failure: failure)),
      (stories) => emit(StoriesState.loaded(stories: stories)),
    );
  }
}
