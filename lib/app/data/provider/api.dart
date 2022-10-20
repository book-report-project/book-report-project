import 'package:book_report_app/app/data/models/models.dart';
import 'package:get/get_connect/connect.dart';

const apiUrl = 'http://localhost:4000';

class MyApi extends GetConnect {
  getFeeds() async {
    final _ = await get('$apiUrl/feed');
    if (_.hasError) {
      return AppError(message: 'Algum erro inesperado aconteceu');
    } else {
      return feedFromJson(_.body);
    }
  }
}
