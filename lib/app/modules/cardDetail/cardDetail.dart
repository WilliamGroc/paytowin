import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/getwidget.dart';
import 'package:paytowin/app/core/theme/colors.dart';
import 'package:paytowin/app/core/utils/ManaCost.dart';

import 'controller.dart';

class CardDetailPage extends GetView<CardDetailController> {
  const CardDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(title: const Text('CardListPage')),
        body: this.controller.card.id == null
            ? const GFLoader(type: GFLoaderType.ios)
            : Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: CardColor.getGradientColor(this.controller.card.colors ?? ['W']),
                )),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.centerLeft,
                      child: Text(this.controller.card.name ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      child: ManaCost(
                        manaCost: this.controller.card.manaCost ?? '',
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: this.controller.card.imageUrl != null
                          ? Image.network(
                              this.controller.card.imageUrl ?? '',
                              width: MediaQuery.of(context).size.width / 2,
                              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) =>
                                  loadingProgress?.cumulativeBytesLoaded != loadingProgress?.expectedTotalBytes
                                      ? const GFLoader(type: GFLoaderType.ios)
                                      : child,
                            )
                          : Image.asset('lib/assets/mtg_back.jpg', width: MediaQuery.of(context).size.width / 2 - 8),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(this.controller.card.type ?? '', style: const TextStyle(fontSize: 16)),
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          Text(this.controller.card.text ?? '')
                        ],
                      ),
                    )),
                    Visibility(
                        visible: this.controller.card.power != null,
                        child: Container(
                            alignment: Alignment.bottomRight,
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              '${this.controller.card.power}/${this.controller.card.toughness}',
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )))
                  ],
                ))));
  }
}
