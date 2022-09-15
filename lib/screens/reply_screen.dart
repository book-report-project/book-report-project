import 'package:book_report_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReplyScreen extends StatelessWidget {
  const ReplyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 54,
          leading: Align(
            alignment: Alignment.centerRight,
            child: IconBackground(
                icon: CupertinoIcons.back,
                onTap: () {
                  Navigator.of(context).pop();
                }),
          ),
          title: const Text('인철님의 댓글', style: TextStyle(fontSize: 14.0)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Center(
                child: IconBorder(
                  icon: CupertinoIcons.ellipsis_vertical,
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: const [CommentDetail()],
        ));
  }
}
