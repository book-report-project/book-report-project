import 'package:book_report_app/app/data/provider/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  getFeeds() => api.getFeeds();
}
