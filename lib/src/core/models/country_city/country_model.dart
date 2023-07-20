import 'package:json_annotation/json_annotation.dart';

import '../../../constants.dart';

part 'country_model.g.dart';

@JsonSerializable(includeIfNull: false)
class CountryModel {
  CountryModel({
    this.code,
    this.name,
    this.id,
  });

  /// Преобразование json в модель
  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);


  /// Название объекта
  @JsonKey(name: JsonKeys.name)
  final String? name;

  /// Id объекта
  @JsonKey(name: JsonKeys.id)
  final int? id;

  @JsonKey(name: JsonKeys.code)
  final String? code;


}
