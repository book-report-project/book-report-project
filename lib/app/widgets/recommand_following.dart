import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';

import 'package:book_report_app/core/theme/theme.dart';
import 'package:book_report_app/core/utils/utils.dart';
import 'package:book_report_app/app/widgets/widgets.dart';
import 'package:book_report_app/app/data/models/models.dart';

class RecommandFollowing extends StatelessWidget {
  const RecommandFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '인철 님을 위한 추천 팔로잉',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 12,
                    color: AppColors.textFaded,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                final faker = Faker();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 60,
                    child: _StoryCard(
                      storyData: StoryData(
                        name: faker.person.name(),
                        url: Randoms.randomPictureUrl(),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard({
    Key? key,
    required this.storyData,
  }) : super(key: key);

  final StoryData storyData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
          Avatar.medium(url: storyData.url),
          const Positioned(
            bottom: 0,
            right: 0,
            child: Icon(
              CupertinoIcons.circle_fill,
              size: 12,
              color: AppColors.secondary,
            ),
          )
        ]),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              storyData.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}