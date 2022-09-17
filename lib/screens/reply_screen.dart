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
          children: [
            const CommentDetail(),
            const MessageSimpleInput(),
            Expanded(
              child: ListView(
                children: [
                  _ReplyData(),
                  _ReplyData(),
                  _ReplyData(),
                  _ReplyData(),
                  _ReplyData(),
                  _ReplyData(),
                  _ReplyData(),
                  _ReplyData(),
                ],
              ),
            )
          ],
        ));
  }
}

class _ReplyData extends StatelessWidget {
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
                  const Avatar.small(
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
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '3 일전',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀안녕하세요 어쩌구저쩌꾸 삐리빠라빠리뽀',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                              ),
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
