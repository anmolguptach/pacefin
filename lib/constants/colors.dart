import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static get blackColor => getColorValues("black");
  static get white => getColorValues("white");
  static get grey => getColorValues("grey");
  static get whitef2 => getColorValues("whitef2");
  static get greyba => getColorValues("greyba");

  static Color getColorValues(color) {
    return HexColor(coreAppColor()[color]!);
  }

  static Map<String, String> coreAppColor() {
    return {
      "black":"#000000",
      "white": "#ffffff",
      "grey":"#464646",
      "whitef2": "#f2f2f2",
      "greyba":"#bababa",
    };
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(String hexColor) : super(_getColorFromHex(hexColor));
}
