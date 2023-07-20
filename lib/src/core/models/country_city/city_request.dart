import 'package:json_annotation/json_annotation.dart';

import '../base/platinum_request.dart';

part 'city_request.g.dart';

/// Метод получает информацию о списке городов либо о конкретном городе по Id.
@JsonSerializable(includeIfNull: false)
class CityRequest extends PlatinumRequest {
  CityRequest({
    this.search,
    this.countrySearch,
    this.countryId,
    this.id,
    this.active = false,
  }) : super();

  /// Преобразование json в модель
  factory CityRequest.fromJson(Map<String, dynamic> json) =>
      _$CityRequestFromJson(json);

  @override
  String get apiMethod =>
      ApiMethods.cities + (active ? '/active' : (id == null ? '' : '/$id'));

  @override
  Map<String, String> get apiQuery => id == null && !active
      ? () {
          final res = Map.from(toJson());
          res.removeWhere((key, value) => value is! String);
          return res as Map<String, String>;
        }()
      : {};

  @override
  Map<String, dynamic> toJson() => _$CityRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.search: search,
        JsonKeys.countrySearch: countrySearch,
        JsonKeys.countryId: countryId,
        JsonKeys.active: active,
        JsonKeys.id: id,
      };

  @override
  CityRequest copyWith({
    String? search,
    String? id,
    bool? active,
    String? countrySearch,
    String? countryId,
  }) {
    return CityRequest(
      search: search ?? this.search,
      id: id ?? this.id,
      active: active ?? this.active,
      countrySearch: countrySearch ?? this.countrySearch,
      countryId: countryId ?? this.countryId,
    );
  }

  /// Строка поиска города
  @JsonKey(name: JsonKeys.search)
  final String? search;

  /// Id города
  @JsonKey(name: JsonKeys.id)
  final String? id;

  /// Параметр получать ли только города с событиями
  final bool active;

  /// Строка поиска города по стране
  @JsonKey(name: JsonKeys.countrySearch)
  final String? countrySearch;

  /// Id страны
  @JsonKey(name: JsonKeys.countryId)
  final String? countryId;

  @override
  void validate() {
    // TODO: implement validate
  }
}
