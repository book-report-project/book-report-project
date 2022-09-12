import 'package:book_report_app/style/theme.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/widgets/widgets.dart';

class AlarmList extends StatefulWidget {
  const AlarmList({Key? key}) : super(key: key);

  @override
  _AlarmListState createState() => _AlarmListState();
}

class _AlarmListState extends State<AlarmList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext ctx, int idx) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 120.0,
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
                  height: 120.0,
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
                        Text(
                          "in-ch",
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.textFaded,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100.0,
                  height: 120,
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
                            TextSpan(text: ' 님이 회원님을'),
                            TextSpan(
                                text: ' 🚀팔로잉',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13.0)),
                            TextSpan(text: '합니다.'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black38,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '2분 전',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          SizedBox(
                            height: 28,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'in-ch',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: ' 님 보러가기'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
