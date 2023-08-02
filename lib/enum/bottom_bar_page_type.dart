import 'package:cookie_sample/presentation/in_app_web_view.dart';
import 'package:cookie_sample/presentation/part_web_view.dart';
import 'package:cookie_sample/presentation/web_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/normal_view.dart';

final bottomBarPageTypeProvider =
    StateProvider<BottomBarPageType>((ref) => BottomBarPageType.webpage2);

enum BottomBarPageType {
  webpage1(
    'WebView(公式)',
    'https://www.amazon.co.jp/',
    Icon(Icons.bookmark_border),
    WebViewPage(
      // key: GlobalObjectKey('aaa'),
      url: 'https://www.amazon.co.jp/',
    ),
  ),
  webpage2(
    '商品のページ',
    'https://www.amazon.co.jp/dp/B0B215PRN2',
    Icon(Icons.bookmark_outlined),
    WebViewPage(
      // key: GlobalObjectKey('bbb'),
      url: 'https://www.amazon.co.jp/dp/B0B215PRN2',
    ),
  ),
  webpage3(
    '一部をWebView',
    'https://www.amazon.co.jp/',
    Icon(Icons.bookmark_border),
    PartWebViewPage(
      url1: 'https://www.amazon.co.jp/',
      url2: 'https://news.yahoo.co.jp/pickup/6437927',

    ),
  ),
  webpage4(
    'InAppWebView',
    'https://www.amazon.co.jp/',
    Icon(Icons.bookmark_border),
    InAppWebPage(
      url: 'https://www.amazon.co.jp/',

    ),
  ),
  normal(
    'メニュー',
    '',
    Icon(Icons.bookmark_outlined),
    NormalViewPage(),
  );

  const BottomBarPageType(
    this.title,
    this.url,
    this.buttonIcon,
    this.widget,
  );

  final String title;
  final String url;
  final Icon buttonIcon;
  final Widget widget;
}
