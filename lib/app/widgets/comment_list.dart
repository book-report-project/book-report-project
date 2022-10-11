import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:book_report_app/core/theme/theme.dart';
import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:book_report_app/app/modules/reply/page.dart';

class CommentList extends StatelessWidget {
  const CommentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Comment();
  }
}

class _Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_CommentData(), _CommentData(), _CommentData()],
    );
  }
}

class _CommentData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black26,
            width: 0.2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          // Header
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Avatar.medium(
                      url:
                          'https://avatars.githubusercontent.com/u/49556566?v=4'),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '인철',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '3 일전',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                                const Icon(
                                  CupertinoIcons.ellipsis_vertical,
                                  size: 15,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                  color: Colors.black45),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const ReplyScreen(),
                                        transition: Transition.cupertino);
                                  },
                                  child: const Text(
                                    '댓글 7개',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: AppColors.textHighlight),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
