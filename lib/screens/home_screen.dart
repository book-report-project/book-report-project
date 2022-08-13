import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ValueListenableBuilder(
              valueListenable: title,
              builder: (BuildContext context, String value, _) {
                return Text(value,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ));
              },
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: IconBackground(
                  icon: CupertinoIcons.bell,
                  onTap: () {
                    print('TODO search');
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Align(
              alignment: Alignment.centerRight,
              child: IconBackground(
                  icon: CupertinoIcons.person,
                  onTap: () {
                    print('TODO search');
                  }),
            ),
          ),
        ],
      ),
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
