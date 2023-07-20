// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      code: json['code'] as String?,
      name: json['name'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  return val;
}
