import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final String title;
  final WebViewController controller;

  const WebViewPage({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: WebViewWidget(
          controller: controller,
        )
    );
  }
}

Future<bool?> openWebPage(
    BuildContext context,
    String title,
    String connectionUrl, {
      String? successUrl,
      String? errorUrl
    }) async {

  final WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onNavigationRequest: (NavigationRequest request) {
          //если в браузере выполняется редирект на страницу successUrl то закрываем вебвью и возвращаем положительный ответ
          if (successUrl != null && request.url.startsWith(successUrl)) Navigator.of(context).pop<bool>(true);
          //если в браузере выполняется редирект на страницу errorUrl то закрываем вебвью и возвращаем отрицательный ответ
          if (errorUrl != null && request.url.startsWith(errorUrl)) {

            Navigator.of(context).pop<bool>(false);
          }

          return NavigationDecision.navigate;
          //return NavigationDecision.prevent;
        },
        //onProgress: (int progress) {},
        //onPageStarted: (String url) {},
        //onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError e) {

        },
      ),
    )
    ..loadRequest(Uri.parse(connectionUrl));

  return await Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) =>
          WebViewPage(
            controller: controller,
            title: title,
          )
  ));
}