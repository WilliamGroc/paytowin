import 'package:paytowin/app/data/model/card.dart';

import '../provider/CardProviderAPI.dart';

class CardRepository {
  var cardProvider = CardProviderAPI();

  Future<List<CardModel>> getAll() {
    return cardProvider.getCards();
  }

  Future<CardModel> getById(String? id) async {
    if (id != null) {
      return cardProvider.getCard(id);
    }

    return CardModel();
  }
}
