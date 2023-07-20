import 'package:json_annotation/json_annotation.dart';
import '../models.dart';

part 'platinum_error.g.dart';

@JsonSerializable(includeIfNull: false)
class PlatinumError {
  PlatinumError({
    required this.message,
    required this.code,
  });

  /// Преобразование json в модель
  factory PlatinumError.fromJson(Map<String, dynamic> json) =>
      _$PlatinumErrorFromJson(json);

  /// код ошибки
  @JsonKey(name: JsonKeys.code)
  final int code;

  @JsonKey(name: JsonKeys.message)
  final String message;

}