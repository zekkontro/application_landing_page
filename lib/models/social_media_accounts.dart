import 'package:application_landing_page/constants/json_key.g.dart';
import 'package:application_landing_page/core/generator/color_generator.dart';
import 'package:flutter/material.dart';

class SocialMediaAccounts {
  final String icon;
  final Color color;
  final String link;

  SocialMediaAccounts({this.icon, this.color, this.link});

  factory SocialMediaAccounts.fromMap(Map<String, dynamic> data) {
    return SocialMediaAccounts(
        color:
            ColorGenerator.generateColorFromRGBList(data[JsonConstants.color]),
        icon: data[JsonConstants.svgIcon],
        link: data[JsonConstants.link]);
  }
}
