// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platinum_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatinumError _$PlatinumErrorFromJson(Map<String, dynamic> json) =>
    PlatinumError(
      message: json['message'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$PlatinumErrorToJson(PlatinumError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
