import 'package:flutter/material.dart';

class BookLink extends StatelessWidget {
  const BookLink({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isBlack = false;

    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 100,
          decoration: BoxDecoration(
            color: isBlack ? Colors.black : Colors.grey[100],
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              width: 1.5,
              color: isBlack ? Colors.black45 : Colors.white60,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Image.asset('assets/imgs/book_img.jpg', height: 95),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 95,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '불편한 편의점 part2',
                        style: TextStyle(
                            color: isBlack ? Colors.white : Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '김호연 저 | 나무옆의자 | 2021년 04월 20일',
                        style: TextStyle(
                            color: isBlack ? Colors.white70 : Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '불편한데 자꾸 가고 싶은 편의점이 있다! 힘들게 살아낸 오늘을 위로하는 편의점의 밤 정체불명의 알바로부터 시작된 웃음과 감동의 나비효과 『망원동 브라더스』 김호연의 ‘동네 이야기’ 시즌 2',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: isBlack ? Colors.white30 : Colors.black54,
                            fontSize: 10,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
