import 'package:json_annotation/json_annotation.dart';

import 'base_request.dart';

export '../../../constants.dart';
export '../../../utils/extensions.dart';

/// Базовый класс создания запроса Platinum API
abstract class PlatinumRequest extends BaseRequest {
  /// Конструктор базового класса для запросов
  PlatinumRequest();

  /// Заголовок метода
  Map<String, String> get headers => NetworkSettings.baseHeaders;

  /// Метод запроса
  String get apiMethod;

  /// Метод запроса
  Map<String,dynamic> get apiQuery;

  /// Версия метода запроса
  String get apiVersion => NetworkSettings.apiVersion7;

  /// Полный путь до метода запроса (версия + метод)
  String get apiMethodPath => '/$apiVersion/$apiMethod';

  List<String>? get includeInResponse => null;

  @override
  PlatinumRequest copyWith();
}
