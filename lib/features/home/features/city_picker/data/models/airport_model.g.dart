// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AirportModel _$AirportModelFromJson(Map<String, dynamic> json) =>
    _AirportModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      codeName: json['code_name'] as String,
    );

Map<String, dynamic> _$AirportModelToJson(_AirportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code_name': instance.codeName,
    };
