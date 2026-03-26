part of 'story_bloc.dart';

@freezed
sealed class StoryEvent with _$StoryEvent {
  const factory StoryEvent.getStoryById(int id) = _GetStoryById;
}
