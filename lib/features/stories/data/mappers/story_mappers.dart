import 'package:aviatraffic/features/stories/data/models/story_model.dart';
import 'package:aviatraffic/features/stories/domain/entities/story_item.dart';

extension StoryModelMapper on StoryModel {
  StoryItem toDomain() => StoryItem(
    id: id,
    title: title,
    description: description,
    imageUrl: imageUrl,
    detailed: detailed,
  );
}

extension StoryModelsMapper on List<StoryModel> {
  List<StoryItem> toDomain() => map((model) => model.toDomain()).toList();
}
