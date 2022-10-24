import 'package:get/get_connect/connect.dart';

import 'package:book_report_app/app/data/models/models.dart';

const apiUrl = 'http://localhost:4000';

class MyApi extends GetConnect {
  getFeeds() async {
    final _ = await get('$apiUrl/feed');
    if (_.hasError) {
      return AppError(message: '서버 오류가 발생하였습니다.');
    } else {
      return feedFromJson(_.body);
    }
  }
}
