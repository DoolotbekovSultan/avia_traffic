// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      name: json['name'] as String,
      directions: (json['directions'] as num).toInt(),
      priceFrom: (json['priceFrom'] as num).toInt(),
      currency: json['currency'] as String? ?? 'с',
      cities: (json['cities'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'directions': instance.directions,
      'priceFrom': instance.priceFrom,
      'currency': instance.currency,
      'cities': instance.cities,
    };
