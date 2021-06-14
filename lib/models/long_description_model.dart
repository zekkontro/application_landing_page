import 'package:application_landing_page/constants/json_key.g.dart';
import 'package:application_landing_page/core/generator/color_generator.dart';
import 'package:flutter/material.dart';

class LongDescription {
  final Color iconBackgroundColor;
  final String title;
  final String description;
  final String svgIcon;

  LongDescription(
      {this.iconBackgroundColor, this.title, this.description, this.svgIcon});

  factory LongDescription.fromMap(Map<String, dynamic> data) {
    return LongDescription(
        description: data[JsonConstants.description],
        svgIcon: data[JsonConstants.svgIcon],
        title: data[JsonConstants.descriptionTitle],
        iconBackgroundColor: ColorGenerator.generateColorFromRGBList(
            data[JsonConstants.iconColor]));
  }
}
