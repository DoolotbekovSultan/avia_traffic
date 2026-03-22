import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_model.g.dart';

@JsonSerializable()
class StoryModel {
  final int id;
  final String title;
  final String description;
  @JsonKey(name: 'img_mb')
  final String imageUrl;
  final String detailed;

  StoryModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.detailed,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoryModelToJson(this);
}
