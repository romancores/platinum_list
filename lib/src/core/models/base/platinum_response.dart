import 'package:json_annotation/json_annotation.dart';

import 'base.dart';

export '../../../constants.dart';
export '../../../utils/extensions.dart';

part 'platinum_response.g.dart';

/// Базовый класс ответа Platinum API
@JsonSerializable()
class PlatinumResponse extends BaseResponse {
  /// Базовый класс ответа Platinum API
  PlatinumResponse({
    this.error,
    this.data,
  });

  /// Преобразование json в модель
  factory PlatinumResponse.fromJson(Map<String, dynamic> json) =>
      _$PlatinumResponseFromJson(json);

  @override
  Map<String, Object?> get equals => <String, Object?>{
        JsonKeys.error: error,
        JsonKeys.data: data,
      };

  @override
  Map<String, dynamic> toJson() => _$PlatinumResponseToJson(this);

  /// Проверка наличии ошибки
  bool get hasError => error == null;

  /// Тело ошибки
  @JsonKey(name: JsonKeys.error)
  final PlatinumError? error;

  /// Данные в динамическом формате
  @JsonKey(name: JsonKeys.data)
  final dynamic data;
}
