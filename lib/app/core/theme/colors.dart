import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xff182747);
  static const secondary = Color(0xff562B08);
  static const background = Color(0xffD8D8D8);

  static const white = Color.fromRGBO(255, 251, 204, 0.6);
  static const blue = Color.fromRGBO(87, 179, 242, 0.6);
  static const red = Color.fromRGBO(245, 152, 125, 0.6);
  static const black = Color.fromRGBO(191, 181, 178, 0.6);
  static const green = Color.fromRGBO(158, 203, 156, 0.6);
  static const gold = Colors.amber;
}

class CardColor {
  static Color getColor(String color) {
    switch (color) {
      case 'W':
        return AppColors.white;
      case 'U':
        return AppColors.blue;
      case 'R':
        return AppColors.red;
      case 'B':
        return AppColors.black;
      case 'G':
        return AppColors.green;
      default:
        return AppColors.gold;
    }
  }

  static List<Color> getColors(List<String> colors) {
    return colors.map((color) => CardColor.getColor(color)).toList();
  }

  static List<Color> getGradientColor(List<String> strColors){
    var colors = getColors(strColors);
    if(colors.length == 1){
      colors.add(colors[0]);
    }

    return colors;
  }
}
