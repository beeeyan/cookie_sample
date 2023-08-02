import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebPage extends StatelessWidget {
  const InAppWebPage({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    // InAppWebViewコントローラ
    // ※ 本来は何かしらのStateで管理すべき
    InAppWebViewController? webViewController;

    return InAppWebView(
      initialUrlRequest: URLRequest(
        url: Uri.parse('https://beeeyan.github.io/learning-lineup/'),
      ),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
        ),
        // Android用オプション（Androidで動作しない場合、useHybridCompositionをtrueに設定）
        android: AndroidInAppWebViewOptions(
          useHybridComposition: true,
        ),
      ),
      // onWebViewCreated: (InAppWebViewController webViewController) {
      //   // https://zenn.dev/ponwink/articles/051583316e7540
      //   webViewController = webViewController..evaluateJavascript(source: 'alert("Hello, javascript!");');
      // },
    );
  }
}
