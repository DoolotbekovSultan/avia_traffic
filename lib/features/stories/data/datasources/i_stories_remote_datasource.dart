import 'package:aviatraffic/features/stories/data/models/story_model.dart';

abstract class IStoriesRemoteDatasource {
  Future<List<StoryModel>> getStories();
}
