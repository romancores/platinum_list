import 'package:json_annotation/json_annotation.dart';

import '../../../constants.dart';

part 'city_model.g.dart';

@JsonSerializable(includeIfNull: false)
class CityModel {
  CityModel({
    this.references,
    this.timezone,
    this.name,
    this.id,
  });

  /// Преобразование json в модель
  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);


  /// Название города
  @JsonKey(name: JsonKeys.name)
  final String? name;

  /// Id города
  @JsonKey(name: JsonKeys.id)
  final int? id;

  /// Временная зона
  @JsonKey(name: JsonKeys.timezone)
  final String? timezone;

  /// Ссылки на страну и другие объекты
  @JsonKey(name: JsonKeys.references)
  final Map<String, dynamic>? references;

}
