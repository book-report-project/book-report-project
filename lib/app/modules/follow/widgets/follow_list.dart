import 'package:book_report_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';

class FollowList extends StatefulWidget {
  const FollowList({Key? key}) : super(key: key);

  @override
  _FollowListState createState() => _FollowListState();
}

class _FollowListState extends State<FollowList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext ctx, int idx) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              // color: Colors.red,
              border: Border(
                bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 90.0,
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(height: 10.0),
                        Avatar.medium(
                            url:
                                'https://avatars.githubusercontent.com/u/49556566?v=4'),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100.0,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'in-ch',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.black54,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '나는 누구 입니다.. 반갑습니다....ㅁㄴㅇㄹㅁㄴaaaaasdfasdfㅇ',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
