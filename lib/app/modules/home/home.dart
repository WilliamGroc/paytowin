import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:paytowin/app/routes/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.background),
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Center(
            child: Text('Pay to Win',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decorationColor: Colors.white,
                )),
          ),
          Expanded(
              child: ListView(
            children: [
              Card(
                  child: ListTile(
                      title: const Text('Collection'),
                      leading: const Icon(RpgAwesome.book),
                      tileColor: Colors.amber,
                      onTap: () => Get.toNamed(Routes.CARD_LIST))),
              Card(
                  child: ListTile(
                      title: const Text('Duel'),
                      leading: const Icon(RpgAwesome.crossed_swords),
                      tileColor: Colors.red,
                      onTap: () => Get.toNamed(Routes.BOARD_GAME))),
              Card(child: ListTile(title: const Text('Settings'), leading: const Icon(RpgAwesome.cog), tileColor: Colors.lightGreen)),
            ],
          ))
        ]));
  }
}
