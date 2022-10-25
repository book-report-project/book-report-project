import 'package:book_report_app/app/data/provider/api.dart';

class FeedRepository {
  final MyApi api;

  FeedRepository(this.api);

  getFeeds() => api.getFeeds();
}
