import 'package:book_report_app/style/theme.dart';
import 'package:flutter/material.dart';

class BottomModal extends StatelessWidget {
  const BottomModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: AppColors.cardLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text('팔로우'),
          ElevatedButton(
            child: const Text('Done!'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
