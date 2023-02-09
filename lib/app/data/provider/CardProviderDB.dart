import 'package:paytowin/app/data/model/card.dart';

import 'ICardProvider.dart';

class SaveCardToDB {

}

class CardProviderDB with SaveCardToDB implements CardProvider {
  @override
  Future<CardModel> getCard(String id) {
    // TODO: implement getCard
    throw UnimplementedError();
  }

  @override
  Future<List<CardModel>> getCards() {
    // TODO: implement getCards
    throw UnimplementedError();
  }
}
