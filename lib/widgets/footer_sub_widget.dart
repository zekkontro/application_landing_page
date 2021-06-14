import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:application_landing_page/models/long_description_model.dart';
import 'package:application_landing_page/models/website_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSubWidget extends StatelessWidget {
  final LongDescription description;
  final WebsiteModel model;
  const FooterSubWidget({Key key, this.description, this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: description.iconBackgroundColor,
            child: SvgPicture.asset(
              "assets/svg/${description.svgIcon}",
              height: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: context.w(0.06),
          ),
          SizedBox(
            width: context.w(0.25),
            child: Column(
              children: [
                Text(
                  description.title,
                  style: model.descriptionTitleStyle,
                ),
                SizedBox(
                  height: context.h(0.04),
                ),
                Text(
                  description.description,
                  style: model.descriptionStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
