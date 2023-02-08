import 'package:paytowin/app/core/theme/colors.dart';
import 'package:paytowin/app/data/model/card.dart';

import '../provider/CardProviderAPI.dart';

class CardRepository {
  var cards = <CardModel>[];
  var cardProvider = CardProviderAPI();

  Future<void> fetchCards() async {
    if (this.cards.isEmpty) {
      this.cards = await this.cardProvider.getCards();
    }
  }

  Future<List<CardModel>> getAll() async {
    await this.fetchCards();
    return this.cards;
  }

  Future<List<CardModel>> getCardsByColor(CardColor color) async {
    await this.fetchCards();
    return this.cards.where((card) => card.colors?.any((cardColor) => cardColor == color) ?? false).toList();
  }

  Future<CardModel> getById(String? id) async {
    if (id != null) {
      return cardProvider.getCard(id);
    }

    return CardModel();
  }
}
