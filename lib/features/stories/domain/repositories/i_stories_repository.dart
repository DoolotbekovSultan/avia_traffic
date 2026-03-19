import 'package:aviatraffic/core/failure/failure.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';
import 'package:dartz/dartz.dart';

abstract class IStoriesRepository {
  Future<Either<Failure, List<StoryItem>>> getStories();
  Future<Either<Failure, StoryItem>> getStoryById(int id);
}
