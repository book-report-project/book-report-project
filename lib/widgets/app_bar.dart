import 'package:book_report_app/screens/notification_screen.dart';
import 'package:book_report_app/models/models.dart';
import 'package:book_report_app/screens/chat_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/widgets/widgets.dart';

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
                ))),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: IconBackground(
                icon: CupertinoIcons.mail,
                onTap: () {
                  final messageData = MessageData(
                      senderName: 'senderName',
                      message: 'message',
                      messageDate: DateTime.now(),
                      dateMessage: 'asdfasdf',
                      profilePicture:
                          'https://item.kakaocdn.net/do/d0abc6fe74e616536cf07626699bbc707154249a3890514a43687a85e6b6cc82');
                  Navigator.of(context).push(ChatScreen.route(messageData));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
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
                  print('User Clicked');
                }),
          ),
        ),
      ],
    );
  }
}
