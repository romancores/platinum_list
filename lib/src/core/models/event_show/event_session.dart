import 'package:json_annotation/json_annotation.dart';
import '../models.dart';

part 'event_session.g.dart';

@JsonSerializable(includeIfNull: false)
class EventSession {
  EventSession({
    required this.start,
    required this.id,
    required this.end,
  });

  /// Преобразование json в модель
  factory EventSession.fromJson(Map<String, dynamic> json) =>
      _$EventSessionFromJson(json);

  /// Id события
  @JsonKey(name: JsonKeys.id)
  final int id;

  /// Дата старта события
  @JsonKey(name: JsonKeys.start, fromJson: _fromJsonDate)
  final DateTime start;

  /// Дата окончания события
  @JsonKey(name: JsonKeys.end, fromJson: _fromJsonDate)
  final DateTime end;
}

DateTime _fromJsonDate(num date) {

  return DateTime.fromMillisecondsSinceEpoch(date.toInt());
}
