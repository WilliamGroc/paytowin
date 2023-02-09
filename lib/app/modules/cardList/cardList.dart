import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:paytowin/app/modules/cardList/components/searchBar.dart';
import 'components/filters/cardFilterModal.dart';
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
                    padding: const EdgeInsets.all(8),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          child: SearchBar(
                            onChange: (value) => this.controller.filterSearch = value,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: CardFilterModal(),
                        )
                      ],
                    )),
                this.controller.loading
                    ? const GFLoader(type: GFLoaderType.android)
                    : Wrap(
                        direction: Axis.horizontal,
                        children: this.controller.cards.map((card) => CardTile(cardData: card)).toList(),
                      ),
              ],
            )))));
  }
}
