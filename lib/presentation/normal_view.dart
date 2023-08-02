import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class NormalViewPage extends StatelessWidget {
  const NormalViewPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(javaScriptEnabled: true),
      ),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse('https://beeeyan.github.io/learning-lineup/'),
                  mode: LaunchMode.inAppWebView,
                  webOnlyWindowName: 'test',
                );
              },
              child: const Text('アプリ内ブラウザ'),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri.parse('https://beeeyan.github.io/learning-lineup/'),
                  mode: LaunchMode.externalApplication,
                  webOnlyWindowName: 'test',
                );
              },
              child: const Text('アプリ外ブラウザ'),
            ),
            ElevatedButton(
              onPressed: () async {
                await ChromeSafariBrowser().open(
                  url: Uri.parse('https://beeeyan.github.io/learning-lineup/'),
                  options: ChromeSafariBrowserClassOptions(
                    android: AndroidChromeCustomTabsOptions(
                        isTrustedWebActivity: true),
                  ),
                );
              },
              child: const Text('Open Android TWA Browser'),
            ),
            ElevatedButton(
              onPressed: () async {
                await InAppBrowser().openUrlRequest(
                  urlRequest: URLRequest(
                    url:
                        Uri.parse('https://beeeyan.github.io/learning-lineup/'),
                  ),
                  options: options,
                );
              },
              child: const Text('Open InAppBrowser'),
            ),
          ],
        ),
      ),
    );
  }
}
