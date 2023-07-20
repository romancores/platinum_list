import 'package:json_annotation/json_annotation.dart';

import '../models.dart';

part 'event_show_request.g.dart';

/// Метод получает список объектов событий с сеансами
@JsonSerializable(includeIfNull: false)
class EventShowRequest extends PlatinumRequest {
  EventShowRequest(
      {this.eventSearch,
        this.id,
        required this.scopes,
        this.hasTickets,
        this.cityId,
        this.eventNearbyCityId})
      : super();

  /// Преобразование json в модель
  factory EventShowRequest.fromJson(Map<String, dynamic> json) =>
      _$EventShowRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.eventShows + (id == null ? '' : '/$id');

  @override
  Map<String, dynamic> get apiQuery =>
      id == null ? toJson() : {};

  @override
  Map<String, dynamic> toJson() => _$EventShowRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
    ...super.equals,
    JsonKeys.search: eventSearch,
    JsonKeys.id: id,
    JsonKeys.hasTickets: hasTickets,
    JsonKeys.cityId: cityId,
    JsonKeys.nearbyCityId: eventNearbyCityId
  };

  @override
  EventShowRequest copyWith({
    String? eventSearch,
    String? id,
    List<EventScope>? scopes,
    bool? hasTickets,
    String? cityId,
    String? eventNearbyCityId,
  }) {
    return EventShowRequest(
      eventSearch: eventSearch ?? this.eventSearch,
      id: id ?? this.id,
      scopes: scopes ?? this.scopes,
      hasTickets: hasTickets ?? this.hasTickets,
      cityId: cityId ?? this.cityId,
      eventNearbyCityId: eventNearbyCityId ?? this.eventNearbyCityId,
    );
  }

  /// Строка поиска события
  @JsonKey(name: JsonKeys.eventSearch)
  final String? eventSearch;

  /// Id сеанса
  @JsonKey(name: JsonKeys.id)
  final String? id;

  /// Список скoупов
  @JsonKey(name: JsonKeys.scope)
  final List<EventScope> scopes;

  /// Является ли сеанс с билетами
  @JsonKey(name: JsonKeys.hasTickets)
  final bool? hasTickets;

  /// Id города
  @JsonKey(name: JsonKeys.cityId)
  final String? cityId;

  /// Id города, в котором находится событие
  @JsonKey(name: JsonKeys.eventNearbyCityId)
  final String? eventNearbyCityId;

  @override
  List<String>? get includeInResponse =>
      [JsonKeys.event, JsonKeys.eventSessions];

  @override
  void validate() {}
}
