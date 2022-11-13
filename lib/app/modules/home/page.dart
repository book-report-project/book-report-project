import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:book_report_app/app/modules/home/sub/feed_page.dart';
import 'package:book_report_app/app/modules/home/sub/search_page.dart';
import 'package:book_report_app/app/modules/home/sub/write_page.dart';
import 'package:book_report_app/app/modules/home/sub/setting_page.dart';
import 'package:book_report_app/core/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavigator());
  }
}

class BottomNavigator extends StatelessWidget {
  final List<Widget> _widgetOptions = [
    const FeedPage(),
    const SearchPage(),
    const WritePage(),
    const SettingPage(),
  ];

  BottomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: const AppBarWidget(),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: Platform.isIOS ? 15.0 : 0),
          child: const TabBar(
            tabs: <Widget>[
              Tab(icon: _BottomWidget(label: "홈", icon: CupertinoIcons.home)),
              Tab(
                  icon:
                      _BottomWidget(label: "검색", icon: CupertinoIcons.search)),
              Tab(
                  icon: _BottomWidget(
                      label: "작성", icon: CupertinoIcons.plus_app)),
              Tab(
                  icon: _BottomWidget(
                      label: "설정", icon: CupertinoIcons.ellipsis_circle)),
            ],
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.secondary,
          ),
        ),
        body: TabBarView(
          children: _widgetOptions, // 어떤 아이템을 넣어줄 지
        ),
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icon, size: 18),
      const SizedBox(
        height: 5,
      ),
      Text(
        label,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      )
    ]);
  }
}
