import 'package:book_report_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/pages/home/feed_page.dart';
import 'package:book_report_app/pages/home/search_page.dart';
import 'package:book_report_app/pages/home/write_page.dart';
import 'package:book_report_app/pages/home/setting_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavigator());
  }
}

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final List<Widget> _widgetOptions = [
    const FeedPage(),
    const SearchPage(),
    const SettingPage(),
    const WritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: const AppBarWidget(),
        bottomNavigationBar: const TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home_outlined)),
            Tab(icon: Icon(Icons.search)),
            Tab(icon: Icon(Icons.movie_outlined)),
            Tab(icon: Icon(Icons.shopping_bag_outlined)),
          ],
          indicatorColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
        ),
        body: TabBarView(
          children: _widgetOptions, // 어떤 아이템을 넣어줄 지
        ),
      ),
    );
  }
}
