// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirportModelImpl _$$AirportModelImplFromJson(Map<String, dynamic> json) =>
    _$AirportModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      codeName: json['code_name'] as String,
    );

Map<String, dynamic> _$$AirportModelImplToJson(_$AirportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code_name': instance.codeName,
    };
