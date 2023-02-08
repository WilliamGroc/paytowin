import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/data/model/card.dart';
import 'package:paytowin/app/routes/pages.dart';

class CardTile extends StatelessWidget {
  late CardModel cardData;

  CardTile({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Get.toNamed(Routes.CARD_DETAIL.replaceFirst(':id', this.cardData.id.toString())),
        child: Container(
            padding: const EdgeInsets.all(4),
            child: this.cardData.imageUrl != null
                ? Image.network(
                    this.cardData.imageUrl?.replaceFirst('http', 'https') ?? '',
                    width: MediaQuery.of(context).size.width / 2 - 8,
                  )
                : Image.asset('lib/assets/mtg_back.jpg', width: MediaQuery.of(context).size.width / 2 - 8)));
  }
}
