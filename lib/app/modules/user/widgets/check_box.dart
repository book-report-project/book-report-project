// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  CheckBox({
    Key? key,
    required this.title,
    required this.text,
    required this.index,
    required this.handleClick,
    required this.currentIndex,
  }) : super(key: key);

  final String title;
  final String text;
  final int index;
  int currentIndex;
  final Function handleClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        handleClick();
      },
      child: Container(
        height: 75,
        width: (MediaQuery.of(context).size.width - 60) / 3,
        decoration: BoxDecoration(
          color: index == currentIndex
              ? const Color(0xff9c61e8)
              : Colors.transparent,
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
            Text(text,
                style: const TextStyle(color: Colors.white, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
