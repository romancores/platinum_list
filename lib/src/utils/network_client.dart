import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../core/platinum_list_config.dart';
import '../core/models/models.dart';

/// {@template network_client}
/// Класс для работы с сетью
/// {@endtemplate}
class NetworkClient {
  /// {@macro network_client}
  NetworkClient(this._config);

  /// {@macro platinum_list_config}
  final PlatinumListConfig _config;

  /// Метод вызывает созданный запрос на Platinum API
  Future<Response> call<Response extends PlatinumResponse>(
    PlatinumRequest request,
    Response Function(Map<String, dynamic> json) response,
  ) async {
    final PlatinumListConfig config = _config;

    Uri? url;

    final Map<String, String> headers = <String, String>{
      ...request.headers,
      if (config is PlatinumListConfigCredential)
        'Authorization': 'Bearer ${(config).token}'
      else
        'Api-Key': (config as PlatinumListConfigApiKey).apiKey!,
    };

    final Map<String, dynamic> query = Map.from(request.apiQuery);

    if (request.includeInResponse != null) {
      query.addAll({JsonKeys.include: request.includeInResponse!.join(',')});
    }

    url ??= config.url(request.apiMethodPath, query);

    config.logger.log(message: url.toString(), name: 'Request URL');
    config.logger.log(message: headers.toString(), name: 'Request headers');

    http.Response rawResponse;
    try {
      rawResponse = await http
          .get(
            url,
            headers: headers,
          )
          .timeout(NetworkSettings.timeout);
    } catch (error, stackTrace) {
      config.logger.log(
        message: '',
        name: 'HTTP Error',
        error: error,
        stackTrace: stackTrace,
      );
      rethrow;
    }

    config.logger.log(
      message: '${rawResponse.statusCode} | ${rawResponse.body}',
      name: 'RawResponse',
    );

    if (rawResponse.statusCode != 200) {
      throw http.ClientException(
        rawResponse.reasonPhrase ?? '',
        rawResponse.request?.url,
      );
    }

    late Response localResponse;
    final dynamic json = jsonDecode(rawResponse.body);

    if (json is Map) {
      localResponse = response(json as Map<String, dynamic>);
    } else {
      throw Exception('REST type error');
    }

    config.logger.log(message: localResponse.toString(), name: 'Response');
    return localResponse;
  }
}
