import 'dart:convert';

import 'package:paytowin/app/data/model/card.dart';
import 'package:http/http.dart' as http;

class CardProviderAPI {
  static const apiUrl = 'https://api.magicthegathering.io/v1';

  Future<List<CardModel>> getCards() async {
    List<CardModel> cards = [];

    var cardList = await Future.wait(['R', 'W', 'B', 'U', 'G'].map((element) async {
      var response = await http.get(Uri.parse('${CardProviderAPI.apiUrl}/cards?pageSize=10&contains=imageUrl&colors=$element'));
      var jsonCards = jsonDecode(response.body)['cards'];
      return List.from(jsonCards).map((jsonCard) => CardModel.fromJson(jsonCard));
    }));

    return cardList.reduce((value, element) => [...value, ...element]).toList();
  }

  Future<CardModel> getCard(String id) async {
    var response = await http.get(Uri.parse('${CardProviderAPI.apiUrl}/cards/$id'));
    var card = CardModel.fromJson(jsonDecode(response.body)['card']);
    return card;
  }
}
