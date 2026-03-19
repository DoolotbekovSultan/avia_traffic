part of 'stories_bloc.dart';

@freezed
sealed class StoriesEvent with _$StoriesEvent {
  const factory StoriesEvent.started() = _Started;
}
