part of 'stories_bloc.dart';

@freezed
sealed class StoriesState with _$StoriesState {
  const factory StoriesState.initial() = _Initial;
  const factory StoriesState.loading() = _Loading;
  const factory StoriesState.loaded({
    required List<StoryItem> stories,
    @Default(0) int currentIndex,
  }) = _Loaded;
  const factory StoriesState.failure({required Failure failure}) = _Failure;
}
