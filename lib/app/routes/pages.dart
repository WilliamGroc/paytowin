import 'package:get/get.dart';
import 'package:paytowin/app/data/services/cardService.dart';
import 'package:paytowin/app/modules/boardGame/board.dart';
import 'package:paytowin/app/modules/cardDetail/binding.dart';
import 'package:paytowin/app/modules/cardList/binding.dart';
import '../modules/cardDetail/cardDetail.dart';
import '../modules/cardList/cardList.dart';
import '../modules/home/home.dart';

part 'home_routes.dart';

var cardRepository = CardRepository();

var pages = [
  GetPage(name: Routes.HOME, page: () => HomePage()),
  GetPage(name: Routes.CARD_LIST, page: () => CardListPage(), binding: CardListBinding(cardRepository)),
  GetPage(name: Routes.CARD_DETAIL, page: () => CardDetailPage(), binding: CardDetailBinding(cardRepository)),
  GetPage(name: Routes.BOARD_GAME, page: () => BoardGamePage())
];
