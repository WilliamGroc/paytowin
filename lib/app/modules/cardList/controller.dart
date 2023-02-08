import 'package:get/get.dart';
import 'package:paytowin/app/data/model/card.dart';
import 'package:paytowin/app/data/model/cardColor.dart';
import 'package:paytowin/app/data/services/cardService.dart';
import 'package:paytowin/app/modules/cardList/components/filters/filterModel.dart';

class CardListController extends GetxController {
  final _cards = <CardModel>[].obs;
  final _filter = FilterModel(colors: [], search: '').obs;

  List<CardModel> get cards => [
        ..._cards.where((card) =>
            this._filter.value.colors.isEmpty ||
            (card.colors?.any((element) =>
                        this._filter.value.colors.contains(element)) ??
                    false) &&
                (card.name
                        ?.toLowerCase()
                        .contains(this._filter.value.search.toLowerCase()) ??
                    false))
      ];

  final CardRepository repository;

  CardListController(this.repository);

  @override
  void onInit() async {
    _cards.value = await repository.getAll();
    super.onInit();
  }

  set filterSearch(String value) {
    this._filter.value =
        FilterModel(colors: this._filter.value.colors, search: value);
  }

  set filterColors(List<CardColors> value) {
    this._filter.value =
        FilterModel(colors: value, search: this._filter.value.search);
  }

  FilterModel get filters => this._filter.value;
}
