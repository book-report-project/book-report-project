import 'package:book_report_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
        title: const Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBorder(
                icon: CupertinoIcons.share,
                onTap: () {},
              ),
            ),
          ),
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
