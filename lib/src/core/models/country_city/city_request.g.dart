// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityRequest _$CityRequestFromJson(Map<String, dynamic> json) => CityRequest(
      search: json['search'] as String?,
      countrySearch: json['country.search'] as String?,
      countryId: json['country.id'] as String?,
      id: json['id'] as String?,
      active: json['active'] as bool? ?? false,
    );

Map<String, dynamic> _$CityRequestToJson(CityRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  writeNotNull('id', instance.id);
  val['active'] = instance.active;
  writeNotNull('country.search', instance.countrySearch);
  writeNotNull('country.id', instance.countryId);
  return val;
}
