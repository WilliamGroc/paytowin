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
  GetPage(name: Routes.HOME, page: () => const HomePage()),
  GetPage(name: Routes.CARD_LIST, page: () => const CardListPage(), binding: CardListBinding(cardRepository), transition: Transition.downToUp),
  GetPage(name: Routes.CARD_DETAIL, page: () => const CardDetailPage(), binding: CardDetailBinding(cardRepository)),
  GetPage(name: Routes.BOARD_GAME, page: () => BoardGamePage())
];
