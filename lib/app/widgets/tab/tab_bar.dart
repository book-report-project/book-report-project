import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:book_report_app/core/theme/theme.dart';

class CommonTabBar extends StatefulWidget {
  const CommonTabBar({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<CommonTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
            ),
            centerTitle: false,
            title: const Text('알림',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                )),
            bottom: PreferredSize(
              preferredSize: const Size(00.0, 30.0),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicator: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                tabs: [
                  SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'All',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 20,
                          height: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: AppColors.secondary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('8', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '새 반응',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 20,
                          height: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: AppColors.secondary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('6', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '새 팔로잉',
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 20,
                          height: 17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: AppColors.secondary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('2', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              AlarmList(),
              AlarmList(),
              AlarmList(),
            ],
          ),
        ),
      ),
    );
  }
}
