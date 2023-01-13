import 'package:get/get.dart';
import 'package:paytowin/app/data/services/cardService.dart';

import 'controller.dart';

class CardListBinding implements Bindings {
  final CardRepository cardRepository;

  CardListBinding(this.cardRepository);

  @override
  void dependencies() {
    Get.lazyPut<CardListController>(() => CardListController(cardRepository));
  }
}