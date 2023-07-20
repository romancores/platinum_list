import 'package:json_annotation/json_annotation.dart';

import '../base/platinum_request.dart';

part 'countries_request.g.dart';

/// Метод получает информацию о странах или конкретной стране по Id
@JsonSerializable(includeIfNull: false)
class CountriesRequest extends PlatinumRequest {
  CountriesRequest({
    this.search,
    this.id,
  }) : super();

  /// Преобразование json в модель
  factory CountriesRequest.fromJson(Map<String, dynamic> json) =>
      _$CountriesRequestFromJson(json);

  @override
  String get apiMethod => ApiMethods.countries + (id == null ? '' : '/$id');

  @override
  Map<String, String> get apiQuery =>
      id == null ? toJson() as Map<String, String> : {};

  @override
  Map<String, dynamic> toJson() => _$CountriesRequestToJson(this);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        ...super.equals,
        JsonKeys.search: search,
        JsonKeys.id: id,
      };

  @override
  CountriesRequest copyWith({
    String? search,
    String? id,
  }) {
    return CountriesRequest(
      search: search ?? this.search,
      id: id ?? this.id,
    );
  }

  /// Строка поиска
  @JsonKey(name: JsonKeys.search)
  final String? search;

  /// Id страны
  @JsonKey(name: JsonKeys.id)
  final String? id;

  @override
  void validate() {
    // TODO: implement validate
  }
}
