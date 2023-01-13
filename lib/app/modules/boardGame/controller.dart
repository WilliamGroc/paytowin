import 'package:get/get.dart';

class BoardGameController extends GetxController {
  BoardGameController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
