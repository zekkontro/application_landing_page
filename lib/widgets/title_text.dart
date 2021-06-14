import 'package:application_landing_page/models/website_model.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final WebsiteModel model;
  const TitleText({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      model.title,
      style: model.titleTextStyle,
    );
  }
}
