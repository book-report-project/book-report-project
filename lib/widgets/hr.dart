import 'package:flutter/material.dart';

class Hr extends StatelessWidget {
  const Hr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isBlack = false;
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 20,
        color: isBlack ? Colors.black : Colors.grey[300]);
  }
}