
import 'package:flutter/material.dart';

enum BottomBarPageType {
  webpage1(
    'webページ1',
    Text(''),
  ),
  webpage2(
    'webページ1',
    Text(''),
  );

  const BottomBarPageType(
    this.buttonTitle,
    this.widget,
  );

  final String buttonTitle;
  final Widget widget;
}
