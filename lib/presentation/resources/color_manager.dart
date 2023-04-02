import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = Hex16Color.fromHex("#B9A500");
  static Color secondary3 = Hex16Color.fromHex("#7400A8");
  static Color secondary2 = Hex16Color.fromHex("#6f00ff");
  static Color secondary = Hex16Color.fromHex("#005F9E");
  static Color secondary4 = Hex16Color.fromHex("#0077FF");
  static Color lightGrey = Hex16Color.fromHex("#ADACAC");
  static Color lightGreyWithO = const Color.fromRGBO(173, 172, 172, 0.1);
  static Color grey = Hex16Color.fromHex("#73737E");
  static Color textGrey = const Color.fromRGBO(47, 46, 65, .6);
}

extension Hex16Color on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
