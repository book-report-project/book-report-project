import 'package:flutter/material.dart';

import 'package:book_report_app/style/theme.dart';

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
      ],
    );
  }
}

Widget _pleaseWriteBookReport(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    child: SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 40,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: AppColors.secondary,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {},
                child: const Text(
                  "🎉  인철 님의 첫 독후감을 작성해주세요.",
                  style: TextStyle(color: Colors.black, fontSize: 13.0),
                )),
          ),
        )),
  );
}
