// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platinum_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatinumResponse _$PlatinumResponseFromJson(Map<String, dynamic> json) =>
    PlatinumResponse(
      error: json['error'] == null
          ? null
          : PlatinumError.fromJson(json['error'] as Map<String, dynamic>),
      data: json['data'],
    );

Map<String, dynamic> _$PlatinumResponseToJson(PlatinumResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
    };
