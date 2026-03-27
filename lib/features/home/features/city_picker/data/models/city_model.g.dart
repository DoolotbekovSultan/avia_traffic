// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityModel _$CityModelFromJson(Map<String, dynamic> json) => _CityModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  codeName: json['code_name'] as String,
  country: json['country'] as String?,
  airports: (json['airports'] as List<dynamic>)
      .map((e) => AirportModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CityModelToJson(_CityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code_name': instance.codeName,
      'country': instance.country,
      'airports': instance.airports,
    };
