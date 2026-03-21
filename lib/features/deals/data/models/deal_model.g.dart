// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealModelImpl _$$DealModelImplFromJson(Map<String, dynamic> json) =>
    _$DealModelImpl(
      id: (json['id'] as num).toInt(),
      language: json['language'] as String,
      codeTo: json['code_to'] as String,
      codeFrom: json['code_from'] as String,
      slug: json['slug'] as String,
      imageUrl: json['image'] as String,
      title: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DealModelImplToJson(_$DealModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'code_to': instance.codeTo,
      'code_from': instance.codeFrom,
      'slug': instance.slug,
      'image': instance.imageUrl,
      'name': instance.title,
      'description': instance.description,
    };
