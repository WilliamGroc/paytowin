import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/routes/pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BoardGame')),
        body: Column(children: [
          const Center(
            child: Text('Pay to Win',
                style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200.0,
                  child: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.CARD_LIST),
                      child: const Text('Collection'))),
              SizedBox(
                  width: 200.0,
                  child: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.BOARD_GAME),
                      child: const Text('Duel')))
            ],
          ))
        ]));
  }
}
