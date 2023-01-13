import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/routes/pages.dart';

import 'controller.dart';

class CardListPage extends GetView<CardListController> {
  final _controller = Get.find<CardListController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('CardListPage')),
        body: Obx(() => SafeArea(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text('Search bar'),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: _controller.cards
                      .map((e) => InkWell(
                        onTap: () => Get.toNamed(Routes.CARD_DETAIL, parameters: {'id': e.id.toString()}),
                          child: Container(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                e.image,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 8,
                              ))))
                      .toList(),
                ),
              ],
            )))));
  }
}
