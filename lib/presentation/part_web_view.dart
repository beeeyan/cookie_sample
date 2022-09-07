import 'package:cookie_sample/presentation/web_view.dart';
import 'package:flutter/material.dart';

class PartWebViewPage extends StatelessWidget {
  const PartWebViewPage({
    super.key,
    required this.url1,
    required this.url2,
  });

  final String url1;
  final String url2;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 250,
          width: 300,
          child: WebViewPage(
            url: url1,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text('アプリ部分'),
        ),
        SizedBox(
          height: 250,
          width: 300,
          child: WebViewPage(
            url: url2,
          ),
        ),
      ],
    );
  }
}
