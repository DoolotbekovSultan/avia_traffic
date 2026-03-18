import 'package:json_annotation/json_annotation.dart';

part 'page_model.g.dart';

@JsonSerializable()
class PageModel {
  final String imageUrl;
  final String title;
  final String description;

  PageModel({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageModelToJson(this);
}
