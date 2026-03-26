// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      codeName: json['code_name'] as String,
      img: json['img'] as String,
      directions: (json['directions'] as num?)?.toInt(),
      cities: (json['cities'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code_name': instance.codeName,
      'img': instance.img,
      'directions': instance.directions,
      'cities': instance.cities,
    };
