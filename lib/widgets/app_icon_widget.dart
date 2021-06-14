import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class AppIconWidget extends StatelessWidget {
  final String image;
  const AppIconWidget({Key key, this.image}) : super(key: key);

  static large(BuildContext context, String image) {
    return Container(
      width: context.h(0.15),
      height: context.h(0.15),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 7,
                color: Colors.grey,
                offset: Offset(0, 3),
                spreadRadius: 2),
          ],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/$image"))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.h(0.08),
      height: context.h(0.08),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 7,
                color: Colors.grey,
                offset: Offset(0, 3),
                spreadRadius: 2),
          ],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage("assets/$image"))),
    );
  }
}
