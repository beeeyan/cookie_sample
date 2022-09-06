import 'package:cookie_sample/presentation/part_web_view.dart';
import 'package:cookie_sample/presentation/web_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomBarPageTypeProvider =
    StateProvider<BottomBarPageType>((ref) => BottomBarPageType.webpage2);

enum BottomBarPageType {
  webpage1(
    'アマゾントップ',
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
      url: 'https://www.amazon.co.jp/',
    ),
  ),
  normal(
    '普通のWidget',
    '',
    Icon(Icons.bookmark_outlined),
    Center(
      child: Text('普通'),
    ),
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
