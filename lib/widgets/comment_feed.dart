import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:book_report_app/screens/screens.dart';

class CommentFeed extends StatefulWidget {
  const CommentFeed({Key? key}) : super(key: key);

  @override
  _CommentFeedState createState() => _CommentFeedState();
}

class _CommentFeedState extends State<CommentFeed> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // chat
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                const Text(
                  '무슨무슨 님 :',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '댓글 더보기댓글 더보기댓글 더보기댓글 더보기댓글 더보기댓글 더보기댓글 더보기',
                  style: TextStyle(color: Colors.black, fontSize: 13.0),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const DetailScreen(), transition: Transition.cupertino);
              },
              child: const Text(
                '댓글 더보기',
                style: TextStyle(color: Colors.grey, fontSize: 13.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
