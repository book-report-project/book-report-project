import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:get/get.dart';

import 'package:book_report_app/app/modules/example/controller.dart';

class AnimalDetailsPage extends GetView<AnimalDetailsController> {
  const AnimalDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
            child: Column(
          children: [
            Flexible(
                child: PhotoView(
                    backgroundDecoration:
                        const BoxDecoration(color: Color(0xff121212)),
                    imageProvider: NetworkImage(controller.animal.value.url!))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('#ID ${controller.animal.value.id}'),
                  const Text('Zoomable image'),
                ],
              ),
            ),
          ],
        )),
        Positioned(
            child: IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.close)))
      ],
    ));
  }
}
