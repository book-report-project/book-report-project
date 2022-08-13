import 'package:flutter/material.dart';

import 'package:book_report_app/pages/pages.dart';
import 'package:book_report_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('독후감 sns 앱');

  final pages = const [FeedPage(), SearchPage(), WritePage(), SettingPage()];

  void _onNavigationItemSelected(index) {
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    pageIndex.addListener(() {});

    return Scaffold(
      appBar: const AppBarWidget(),
      body: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (BuildContext context, int value, _) {
            return pages[value];
          }),
      bottomNavigationBar: BottomNavigationBarWidget(
        onItemSelected: _onNavigationItemSelected,
      ),
    );
  }
}
