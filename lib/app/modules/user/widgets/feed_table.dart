import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';

class FeedTable extends StatelessWidget {
  const FeedTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 15,
            color: Colors.black12,
          ),
          const SizedBox(height: 15),
          const FeedWidget(
            isDetail: false,
            hideFollow: true,
          ),
          Container(
            height: 15,
            color: Colors.black12,
          ),
          const SizedBox(height: 15),
          const FeedWidget(
            isDetail: false,
            hideFollow: true,
          ),
          Container(
            height: 15,
            color: Colors.black12,
          ),
          const SizedBox(height: 15),
          const FeedWidget(
            isDetail: false,
            hideFollow: true,
          ),
        ],
      ),
    );
  }
}
