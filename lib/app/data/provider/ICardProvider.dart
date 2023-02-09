import 'package:paytowin/app/data/model/card.dart';

abstract class CardProvider {
  Future<List<CardModel>> getCards();
  Future<CardModel> getCard(String id);
}