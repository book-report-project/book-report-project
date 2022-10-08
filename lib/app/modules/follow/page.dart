import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';

class FollowScreen extends StatelessWidget {
  const FollowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 150,
          leading: const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('in-ch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ))),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: IconBackground(
                  icon: CupertinoIcons.trash_slash,
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
        body: Container());
  }
}
