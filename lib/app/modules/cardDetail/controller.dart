import 'package:get/get.dart';
import 'package:paytowin/app/data/model/card.dart';
import 'package:paytowin/app/data/services/cardService.dart';

class CardDetailController extends GetxController {
  final CardRepository repository;

  final Rx<CardModel> _card = CardModel().obs;

  CardModel get card => _card.value;

  CardDetailController(this.repository);

  @override
  void onInit() async {
    print(Get.parameters['id']);
    this._card.value = await this.repository.getById(Get.parameters['id']);
    super.onInit();
  }
}
