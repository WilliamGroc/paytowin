import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/core/components/searchBar.dart';
import 'components/cardTile.dart';
import 'controller.dart';

class CardListPage extends GetView<CardListController> {
  const CardListPage({super.key});

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
                    child: SearchBar(
                      onChange: (value) => this.controller.filter = value,
                    )),
                Wrap(
                  direction: Axis.horizontal,
                  children: this.controller.cards.map((card) => CardTile(cardData: card)).toList(),
                ),
              ],
            )))));
  }
}
