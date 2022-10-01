import 'package:get/route_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/widgets/widgets.dart';
import 'package:book_report_app/screens/screens.dart';

class AppBarWidget extends StatefulWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  AppBarWidgetState createState() => AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 120,
      leading: const Padding(
        padding: EdgeInsets.only(left: 25),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text('독후감 sns앱',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87))),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: IconBackground(
                icon: CupertinoIcons.mail,
                onTap: () {
                  Get.to(const ChatListScreen(),
                      transition: Transition.downToUp);
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: IconBackground(
                icon: CupertinoIcons.bell,
                onTap: () {
                  Get.to(const NotificationScreen(),
                      transition: Transition.cupertino);
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
                  Get.to(const UserScreen(), transition: Transition.cupertino);
                }),
          ),
        ),
      ],
    );
  }
}
