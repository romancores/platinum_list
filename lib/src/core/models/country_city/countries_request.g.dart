// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountriesRequest _$CountriesRequestFromJson(Map<String, dynamic> json) =>
    CountriesRequest(
      search: json['search'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CountriesRequestToJson(CountriesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  writeNotNull('id', instance.id);
  return val;
}
