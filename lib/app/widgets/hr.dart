import 'package:flutter/material.dart';

class Hr extends StatelessWidget {
  const Hr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isBlack = false;
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 10,
        color: isBlack ? Colors.black : Colors.grey[200]);
  }
}
