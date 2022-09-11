// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 120,
        leading: const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('알림',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ))),
        ),
      ),
      body: Container(),
    );
  }
}
