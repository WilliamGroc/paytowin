import 'package:get/get.dart';
import 'package:paytowin/app/data/services/cardService.dart';

import 'controller.dart';

class CardDetailBinding implements Bindings {
  final CardRepository cardRepository;

  CardDetailBinding(this.cardRepository);

  @override
  void dependencies() {
    Get.lazyPut<CardDetailController>(() => CardDetailController(cardRepository));
  }
}