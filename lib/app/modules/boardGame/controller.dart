import 'package:get/get.dart';
import 'package:paytowin/app/data/model/card.dart';
import 'package:paytowin/app/data/services/cardService.dart';

class BoardGameController extends GetxController {
  final CardRepository cardRepository;

  final myHand = <CardModel>[];
  final opponentHand = <CardModel>[];
  int turnCount = 0;

  BoardGameController(this.cardRepository);

  void initGame() {}

  void playGard() {}

  void drawCard() {}
}
