import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends ConsumerWidget {
  const WebViewPage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final cookieManager = WebviewCookieManager();

    return WebView(
      // initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) async {
        // ClearしないとCookieが反映されない。
        // await cookieManager.clearCookies();
        // final cookies = await cookieManager.getCookies(url);
        // await cookieManager.setCookies(cookies);
        // Cookieを設定した後に、URLを読み込む
        await controller.loadUrl(url);
      },
    );
  }
}
