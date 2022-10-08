// ignore_for_file: must_be_immutable

import 'package:book_report_app/app/modules/follow/page.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/app/modules/user/widgets/check_box.dart';
import 'package:get/route_manager.dart';

class CountingButtons extends StatefulWidget {
  CountingButtons({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  int currentIndex;

  @override
  State<CountingButtons> createState() => CountingButtonsState();
}

class CountingButtonsState extends State<CountingButtons> {
  void handleClick(index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 30),
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
            CheckBox(
                title: 'Posts',
                text: '212',
                index: 0,
                currentIndex: widget.currentIndex,
                handleClick: () => handleClick(0)),
            CheckBox(
                title: '팔로잉',
                text: '20',
                index: 1,
                currentIndex: widget.currentIndex,
                handleClick: () => Get.to(const FollowScreen(),
                    transition: Transition.downToUp)),
            CheckBox(
                title: '팔로워',
                text: '20k',
                index: 2,
                currentIndex: widget.currentIndex,
                handleClick: () => Get.to(const FollowScreen(),
                    transition: Transition.downToUp)),
          ],
        ),
      ),
    );
  }
}
