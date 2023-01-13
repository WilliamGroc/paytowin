import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class BoardGamePage extends GetView<BoardGameController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BoardGame')),
        body: SafeArea(child: Text('BoardGame')));
  }
}
