import 'package:flutter/cupertino.dart';

class ColorGenerator {
  static Color generateColorFromRGBList(List<dynamic> rgbColors) {
    print(rgbColors.toString());
    return Color.fromRGBO(rgbColors[0], rgbColors[1], rgbColors[2], 1);
  }
}
