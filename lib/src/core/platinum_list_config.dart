import '../utils/logger.dart';
import 'models/base/base.dart';

/// {@template platinum_list_config}
/// Класс позволяет конфигурировать SDK.
/// {@endtemplate}
abstract class PlatinumListConfig {
  /// Создает экземпляр класса для конфигурирования SDK, через `token`
  factory PlatinumListConfig.credential({
    required String token,
    BaseLogger logger,
  }) = PlatinumListConfigCredential;

  /// Создает экземпляр класса для конфигурирования SDK, через `apiKey`
  factory PlatinumListConfig.key({
    required String apiKey,
    BaseLogger logger,
  }) = PlatinumListConfigApiKey;

  const PlatinumListConfig._({
    this.logger = const Logger(),
  });


  /// Позволяет использовать свой логгер или заданный
  final BaseLogger logger;

  /// Uri до Platinum API
  Uri url(String path, Map<String, dynamic> queryParameters) =>
      Uri.https(NetworkSettings.domain, path, queryParameters);
}

class PlatinumListConfigCredential extends PlatinumListConfig {
  const PlatinumListConfigCredential({
    required this.token,
    BaseLogger logger = const Logger(),
  }) : super._( logger: logger);

  final String? token;
}

class PlatinumListConfigApiKey extends PlatinumListConfig {
  const PlatinumListConfigApiKey({
    required this.apiKey,
    BaseLogger logger = const Logger(),
  }) : super._( logger: logger);

  final String? apiKey;
}
