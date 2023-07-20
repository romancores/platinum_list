// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventShowModel _$EventShowModelFromJson(Map<String, dynamic> json) =>
    EventShowModel(
      start: _fromJsonDate(json['start'] as num),
      id: json['id'] as int,
      end: _fromJsonDate(json['end'] as num),
      sessionCount: json['session_count'] as int?,
      hasTickets: json['has_tickets'] as bool,
      eventSessions: json['event_sessions'] == null
          ? null
          : PlatinumResponse.fromJson(
              json['event_sessions'] as Map<String, dynamic>),
      hasSalesStarted: json['has_sales_started'] as bool,
      isRegular: json['is_regular'] as bool?,
      isSoldOut: json['is_sold_out'] as bool,
      event: json['event'] == null
          ? null
          : PlatinumResponse.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventShowModelToJson(EventShowModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('session_count', instance.sessionCount);
  val['id'] = instance.id;
  val['has_tickets'] = instance.hasTickets;
  val['is_sold_out'] = instance.isSoldOut;
  val['has_sales_started'] = instance.hasSalesStarted;
  val['start'] = instance.start.toIso8601String();
  val['end'] = instance.end.toIso8601String();
  writeNotNull('is_regular', instance.isRegular);
  writeNotNull('event', instance.event);
  writeNotNull('event_sessions', instance.eventSessions);
  return val;
}
