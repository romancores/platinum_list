// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventSession _$EventSessionFromJson(Map<String, dynamic> json) => EventSession(
      start: _fromJsonDate(json['start'] as num),
      id: json['id'] as int,
      end: _fromJsonDate(json['end'] as num),
    );

Map<String, dynamic> _$EventSessionToJson(EventSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
