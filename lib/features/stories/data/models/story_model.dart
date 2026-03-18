import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_model.g.dart';

@JsonSerializable()
class StoryModel {
  final String title;
  final String subtitle;
  final String imageUrl;
  StoryModel({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryModelToJson(this);
}
