import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';

class FeedTable extends StatelessWidget {
  const FeedTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 30),
          FeedWidget(
            isDetail: false,
            hideFollow: true,
          ),
          SizedBox(height: 30),
          FeedWidget(
            isDetail: false,
            hideFollow: true,
          ),
          SizedBox(height: 30),
          FeedWidget(
            isDetail: false,
            hideFollow: true,
          ),
        ],
      ),
    );
  }
}
