import 'package:application_landing_page/constants/json_key.g.dart';
import 'package:application_landing_page/core/generator/color_generator.dart';
import 'package:flutter/material.dart';

class TextStyleGenerator {
  static TextStyle customTextStyleGenerator(Map<String, dynamic> data) {
    return TextStyle(
        fontWeight: TextStyleGenerator.generateFontWeightFromMap(
            data[JsonConstants.fontWeight]),
        color:
            ColorGenerator.generateColorFromRGBList(data[JsonConstants.color]),
        fontSize: data[JsonConstants.fontSize]);
  }

  static FontWeight generateFontWeightFromMap(String fontWeight) {
    switch (fontWeight) {
      case "regular":
        return FontWeight.normal;
        break;
      case "semi-bold":
        return FontWeight.w600;
        break;
      case "bold":
        return FontWeight.bold;
        break;
      default:
        return FontWeight.normal;
        break;
    }
  }
}
