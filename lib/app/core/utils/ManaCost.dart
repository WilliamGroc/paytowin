import 'package:flutter/cupertino.dart';

class ManaCost extends StatelessWidget {
  String manaCost;

  ManaCost({Key? key, required this.manaCost}) : super(key: key);

  String getManaImagePath(String value) {
    switch (value) {
      case 'W':
        return 'lib/assets/mana_white.png';
      case 'B':
        return 'lib/assets/mana_black.png';
      case 'U':
        return 'lib/assets/mana_blue.png';
      case 'R':
        return 'lib/assets/mana_red.png';
      case 'G':
        return 'lib/assets/mana_green.png';
      default:
        return 'lib/assets/mana_uncolor.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: this
          .manaCost
          .replaceAll('{', '')
          .split('}')
          .where((element) => element != '')
          .map((mana) => Image.asset(
                this.getManaImagePath(mana),
                width: 24,
              ))
          .toList(),
    );
  }
}
