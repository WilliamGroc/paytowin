import 'package:paytowin/app/data/model/card.dart';

import '../provider/mock_data.dart';

class CardRepository {
  late var dataset = <CardModel>[];

  CardRepository(){
    dataset = data;
  }

  getAll() {
    return dataset;
  }

  CardModel getId(id) {
    return dataset.firstWhere((element) => element.id == id);
  }

  void delete(id) {
    dataset.removeWhere((element) => element.id == id);
  }

  CardModel edit(CardModel obj) {
    var index = dataset.indexWhere((element) => element.id == obj.id);
    dataset.replaceRange(index, index, [obj]);
    return obj;
  }

  CardModel add(CardModel obj) {
    dataset.add(obj);
    return obj;
  }
}
