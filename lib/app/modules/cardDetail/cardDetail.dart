import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class CardDetailPage extends GetView<CardDetailController> {
    final _controller = Get.find<CardDetailController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(Get.parameters['id']?? ''),
    );
  }
}
