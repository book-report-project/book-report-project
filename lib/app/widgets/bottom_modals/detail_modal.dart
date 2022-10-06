import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';

class DetailModal extends StatelessWidget {
  const DetailModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black45,
                width: 0.2,
              ),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: 40.0,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconBackground(
                        icon: CupertinoIcons.share,
                        onTap: () {
                          print('Share Clicked');
                        }),
                    const SizedBox(width: 15),
                    const Text('게시글 공유하기',
                        style: TextStyle(color: Colors.black87))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconBackground(
                        icon: CupertinoIcons.bookmark,
                        onTap: () {
                          print('Share Clicked');
                        }),
                    const SizedBox(width: 15),
                    const Text('게시글 저장하기',
                        style: TextStyle(color: Colors.black87))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconBackground(
                        icon: CupertinoIcons.exclamationmark_circle,
                        onTap: () {
                          print('Declaration Clicked');
                        }),
                    const SizedBox(width: 15),
                    const Text(
                      '게시글 신고하기',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
