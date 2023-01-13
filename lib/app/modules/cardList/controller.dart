import 'package:get/get.dart';
import 'package:paytowin/app/data/services/cardService.dart';

import '../../data/model/card.dart';

class CardListController extends GetxController {
  final _cards = [].obs;
  List<CardModel> get cards => [..._cards];

  final CardRepository repository;
  CardListController(this.repository);

  @override
  void onInit() {
    _cards.value = repository.getAll();
    super.onInit();
  }

}
