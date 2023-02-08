import 'package:get/get.dart';
import 'package:paytowin/app/data/services/cardService.dart';

import '../../data/model/card.dart';

class CardListController extends GetxController {
  final _cards = <CardModel>[].obs;
  final _filter = ''.obs;

  List<CardModel> get cards => [
        ..._cards
            .where((p0) => (p0.name?.toLowerCase().contains(this._filter.value.toLowerCase()) ?? false))
      ];

  final CardRepository repository;

  CardListController(this.repository);

  @override
  void onInit() async {
    _cards.value = await repository.getAll();
    super.onInit();
  }

  set filter(String value){
    this._filter.value = value;
  }
}
