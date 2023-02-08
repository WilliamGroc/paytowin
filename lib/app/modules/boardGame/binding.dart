
import 'package:get/get.dart';
import 'package:paytowin/app/data/services/cardService.dart';

import 'controller.dart';

class BoardGameBinding implements Bindings {
  final CardRepository cardRepository;

  BoardGameBinding(this.cardRepository);

  @override
  void dependencies() {
    Get.lazyPut<BoardGameController>(() => BoardGameController(cardRepository));
  }

}