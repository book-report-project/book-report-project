import 'package:book_report_app/app/data/provider/api.dart';

class DetailRepository {
  final MyApi api;

  DetailRepository(this.api);

  getFeeds() => api.getFeeds();
}
