import 'package:json_annotation/json_annotation.dart';

import '../models.dart';

part 'event_request.g.dart';

/// Метод получает список событий по параметрам поиска, города и тд
@JsonSerializable(includeIfNull: false)
class EventRequest extends PlatinumRequest {
  EventRequest(
      {this.search,
      this.id,
      required this.scopes,
      this.hasTickets,
      this.cityId,
      this.nearbyCityId})
      : super();

  /// Преобразование json в модель
  factory EventRequest.fromJson(Map<String, dynamic> json) =>
      _$EventRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.events + (id == null ? '' : '/$id');

  @override
  Map<String, dynamic> get apiQuery =>
      id == null ? toJson() : {};

  @override
  Map<String, dynamic> toJson() => _$EventRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.search: search,
        JsonKeys.id: id,
        JsonKeys.hasTickets: hasTickets,
        JsonKeys.cityId: cityId,
        JsonKeys.nearbyCityId: nearbyCityId
      };

  @override
  EventRequest copyWith({
    String? search,
    String? id,
    List<EventScope>? scopes,
    bool? hasTickets,
    String? cityId,
    String? nearbyCityId,
  }) {
    return EventRequest(
      search: search ?? this.search,
      id: id ?? this.id,
      scopes: scopes ?? this.scopes,
      hasTickets: hasTickets ?? this.hasTickets,
      cityId: cityId ?? this.cityId,
      nearbyCityId: nearbyCityId ?? this.nearbyCityId,
    );
  }

  /// Строка поиска в свободном формате
  @JsonKey(name: JsonKeys.search)
  final String? search;

  /// Id конкретного события для получения
  @JsonKey(name: JsonKeys.id)
  final String? id;

  /// Список скоупов апи ключа
  @JsonKey(name: JsonKeys.scope)
  final List<EventScope> scopes;

  /// Доступны ли билеты для события
  @JsonKey(name: JsonKeys.hasTickets)
  final bool? hasTickets;

  /// Id города
  @JsonKey(name: JsonKeys.cityId)
  final String? cityId;

  /// Id города, вокруг которого нужно найти события
  @JsonKey(name: JsonKeys.nearbyCityId)
  final String? nearbyCityId;

  @override
  List<String>? get includeInResponse =>
      [Includes.price, Includes.score, Includes.venues];

  @override
  void validate() {}
}
