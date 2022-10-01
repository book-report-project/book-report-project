import 'package:flutter/material.dart';

import 'package:book_report_app/widgets/widgets.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 400,
        leading: const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ))),
        ),
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
                    _CountingButtons()
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class _CountingButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 100),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: const Color(0xffb48aeb),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 5),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _CheckBox(title: 'Posts', text: '212', index: 0),
            const _CheckBox(title: '팔로잉', text: '20', index: 1),
            const _CheckBox(title: '팔로워', text: '20k', index: 2),
          ],
        ),
      ),
    );
  }
}

class _CheckBox extends StatelessWidget {
  const _CheckBox({
    Key? key,
    required this.title,
    required this.text,
    required this.index,
  }) : super(key: key);

  final String title;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: (MediaQuery.of(context).size.width - 60) / 3,
      decoration: BoxDecoration(
        color: index == 0 ? const Color(0xff9c61e8) : Colors.transparent,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }
}
