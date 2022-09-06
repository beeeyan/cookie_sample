import 'package:cookie_sample/presentation/web_view.dart';
import 'package:flutter/material.dart';

class PartWebViewPage extends StatelessWidget {
  const PartWebViewPage({
    super.key,
    required this.url,
  });

  final String url;

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
            url: url,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text('アプリ部分'),
        ),
      ],
    );
  }
}
