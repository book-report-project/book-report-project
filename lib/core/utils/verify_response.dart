import 'package:book_report_app/app/data/models/models.dart';

verifyresponse(_) {
  if (_.runtimeType == AppError) {
    return true;
  } else {
    return false;
  }
}
