import 'package:book_report_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width - 100,
        leading: const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('인철',
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
      body: Container(),
    );
  }
}
