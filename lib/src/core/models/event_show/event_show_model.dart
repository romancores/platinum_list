import 'package:json_annotation/json_annotation.dart';
import '../models.dart';

part 'event_show_model.g.dart';

@JsonSerializable(includeIfNull: false)
class EventShowModel {
  EventShowModel( {
    required this.start,
    required this.id,
    required this.end,
    this.sessionCount,
    required this.hasTickets,
    this.eventSessions,
    required this.hasSalesStarted,
    this.isRegular,
    required this.isSoldOut,
    this.event,
  });

  /// Преобразование json в модель
  factory EventShowModel.fromJson(Map<String, dynamic> json) =>
      _$EventShowModelFromJson(json);

  /// количество сеансов
  @JsonKey(name: JsonKeys.sessionCount)
  final int? sessionCount;

  /// Id события
  @JsonKey(name: JsonKeys.id)
  final int id;

  /// наличие билетов
  @JsonKey(name: JsonKeys.hasTickets)
  final bool hasTickets;

  /// параметр распродано ли все
  @JsonKey(name: JsonKeys.isSoldOut)
  final bool isSoldOut;

  /// начались ли продажи билетов
  @JsonKey(name: JsonKeys.hasSalesStarted)
  final bool hasSalesStarted;

  /// Дата начала события
  @JsonKey(name: JsonKeys.start, fromJson: _fromJsonDate)
  final DateTime start;

  /// Дата окончания события
  @JsonKey(name: JsonKeys.end, fromJson: _fromJsonDate)
  final DateTime end;

  /// Параметр регулярности события
  @JsonKey(name: JsonKeys.isRegular)
  final bool? isRegular;

  /// Объект события
  @JsonKey(name: JsonKeys.event)
  final PlatinumResponse? event;

  /// Список сеансов события
  @JsonKey(name: JsonKeys.eventSessions)
  final PlatinumResponse? eventSessions;
}

DateTime _fromJsonDate(num date) {

  return DateTime.fromMillisecondsSinceEpoch(date.toInt());
}
