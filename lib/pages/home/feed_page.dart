import 'package:flutter/material.dart';

import 'package:book_report_app/style/theme.dart';
import 'package:book_report_app/widgets/widgets.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  FeedPageState createState() => FeedPageState();
}

class FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _pleaseWriteBookReport(context),
        const Stories(),
        // const RecommandFollowing()
      ],
    );
  }
}

Widget _pleaseWriteBookReport(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    child: Column(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "🎉  인철 님의 첫 독후감을 작성해주세요.",
                          style: TextStyle(fontSize: 13.0),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 30.0, right: 30.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "양서는 처음 읽은 때에는 새 친구를 얻은 것과 같고, 전에 정독했던 책을 다시 읽을 때에는 옛날 친구를 만나는 것과 같다.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textFaded,
                              fontSize: 11.0,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "- 골드스미스 -",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}
