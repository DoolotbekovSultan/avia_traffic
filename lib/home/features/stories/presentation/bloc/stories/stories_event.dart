part of 'stories_bloc.dart';

@freezed
sealed class StoriesEvent with _$StoriesEvent {
  const factory StoriesEvent.started() = _Started;
  const factory StoriesEvent.updateIndex(int index) = _UpdateIndex;
  const factory StoriesEvent.nextStory() = _NextStory;
  const factory StoriesEvent.previousStory() = _PreviousStory;
}
