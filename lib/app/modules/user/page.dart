// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:book_report_app/app/modules/user/widgets/counting_buttons.dart';
import 'package:book_report_app/app/modules/user/widgets/feed_table.dart';
import 'package:book_report_app/app/modules/user/widgets/user_list.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex = 0; // 현재 index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text('내 프로필',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black87,
            )),
      ),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Avatar.large(
                            url:
                                'https://avatars.githubusercontent.com/u/49556566?v=4'),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "in-ch",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "@inch",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "About Me",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      '''안녕하세요. 내가 만들고 싶은 웹, 앱을 만드는 사람입니다. 잘 부탁드립니다.

Insta: @in-ch, 
Email: sxin294999@gamil.com
                      ''',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w200),
                    ),
                    CountingButtons(currentIndex: currentIndex),
                  ],
                ),
              ),
            ),
            currentIndex == 0 ? const FeedTable() : const UserList()
          ],
        ),
      )),
    );
  }
}
