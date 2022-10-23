import 'package:get/get.dart';

import 'package:book_report_app/app/data/models/models.dart';
import 'package:book_report_app/app/modules/example/repository.dart';

class AnimalDetailsController extends GetxController {
  final AnimalDetailsRepository repository;
  AnimalDetailsController(this.repository);
  final animal = Animals().obs;
  final breeds = BreedAnimal().obs;
  @override
  void onInit() {
    animal.value = Get.arguments;
    super.onInit();
  }
}
