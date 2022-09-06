import 'package:cookie_sample/enum/bottom_bar_page_type.dart';
import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
    this.pageType = BottomBarPageType.webpage1,
  });

  final BottomBarPageType pageType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(pageType.title),
        centerTitle: true,
      ),
      body: pageType.widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageType.index,
        onTap: (index) {
          Navigator.pushReplacement<void, void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => RootPage(
                pageType: BottomBarPageType.values[index],
              ),
            ),
          );
        },
        items: <BottomNavigationBarItem>[
          for (final pageType in BottomBarPageType.values)
            BottomNavigationBarItem(
              icon: pageType.buttonIcon,
              label: pageType.title,
            )
        ],
      ),
    );
  }
}
