import 'package:book_report_app/app/modules/detail/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBackground(
                icon: CupertinoIcons.share,
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: IconBackground(
                icon: CupertinoIcons.ellipsis_vertical,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: _DetailBody()),
          const MessageInput(),
        ],
      ),
    );
  }
}

class _DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [FeedWidget(isDetail: true), CommentList()],
    );
  }
}
