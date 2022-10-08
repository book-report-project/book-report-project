import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:book_report_app/core/theme/theme.dart';
import 'package:book_report_app/app/modules/follow/widgets/follow_list.dart';

class FollowTabBar extends StatefulWidget {
  const FollowTabBar({Key? key}) : super(key: key);

  @override
  _FollowTabBarState createState() => _FollowTabBarState();
}

class _FollowTabBarState extends State<FollowTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
            ),
            title: const Text('in-ch',
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
                          '팔로잉',
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
                              const Text('1k', style: TextStyle(fontSize: 11)),
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
                          '팔로우',
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
                              const Text('0', style: TextStyle(fontSize: 11)),
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
              FollowList(),
              FollowList(),
            ],
          ),
        ),
      ),
    );
  }
}
