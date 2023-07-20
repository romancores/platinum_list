// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
      references: json['references'] as Map<String, dynamic>?,
      timezone: json['timezone'] as String?,
      name: json['name'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$CityModelToJson(CityModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('references', instance.references);
  return val;
}
