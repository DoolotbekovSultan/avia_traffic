part of 'story_bloc.dart';

@freezed
sealed class StoryState with _$StoryState {
  const factory StoryState.initial() = _Initial;
  const factory StoryState.loading() = _Loading;
  const factory StoryState.loaded({required StoryItem story}) = _Loaded;
  const factory StoryState.failure({required Failure failure}) = _Failure;
}
