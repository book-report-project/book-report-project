import 'package:like_button/like_button.dart';
import 'package:flutter/cupertino.dart';

import 'package:book_report_app/style/theme.dart';

class EmojiButtons extends StatefulWidget {
  const EmojiButtons({Key? key}) : super(key: key);

  @override
  _EmojiButtonsState createState() => _EmojiButtonsState();
}

class _EmojiButtonsState extends State<EmojiButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdddddd),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const SizedBox(width: 7.0),
                  LikeButton(
                    size: 28,
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return const Text('🥰', style: TextStyle(fontSize: 20.0));
                    },
                    likeCount: 0,
                  ),
                  const SizedBox(width: 7.0),
                ],
              ),
            ),
            const SizedBox(width: 5.0),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdddddd),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const SizedBox(width: 7.0),
                  LikeButton(
                    size: 28,
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return const Text('🔥', style: TextStyle(fontSize: 20.0));
                    },
                    likeCount: 0,
                  ),
                  const SizedBox(width: 7.0),
                ],
              ),
            ),
            const SizedBox(width: 5.0),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdddddd),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const SizedBox(width: 7.0),
                  LikeButton(
                    size: 28,
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return const Text('😵', style: TextStyle(fontSize: 20.0));
                    },
                    likeCount: 100,
                  ),
                  const SizedBox(width: 7.0),
                ],
              ),
            ),
            const SizedBox(width: 5.0),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdddddd),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const SizedBox(width: 7.0),
                  LikeButton(
                    size: 28,
                    circleColor: const CircleColor(
                        start: Color(0xff00ddff), end: Color(0xff0099cc)),
                    bubblesColor: const BubblesColor(
                      dotPrimaryColor: Color(0xff33b5e5),
                      dotSecondaryColor: Color(0xff0099cc),
                    ),
                    likeBuilder: (bool isLiked) {
                      return const Text('😭', style: TextStyle(fontSize: 20.0));
                    },
                    likeCount: 100,
                  ),
                  const SizedBox(width: 7.0),
                ],
              ),
            ),
            const SizedBox(width: 5.0),
          ],
        ),
        Row(
          children: const [
            Icon(
              CupertinoIcons.ellipsis,
              size: 20,
              color: AppColors.secondary,
            ),
          ],
        ),
      ],
    );
  }
}
