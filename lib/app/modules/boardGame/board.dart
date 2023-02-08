import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/modules/boardGame/components/BoardSide.dart';

import 'controller.dart';

class BoardGamePage extends GetView<BoardGameController> {
  const BoardGamePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BoardGame')),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: BoardSide(title: 'Opponent'),
            ),
            Expanded(flex: 1, child: BoardSide(title: 'Field')),
            Expanded(flex: 2, child: BoardSide(title: 'Me'))
          ],
        ));
  }
}
