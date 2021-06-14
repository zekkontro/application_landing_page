import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:application_landing_page/models/website_model.dart';
import 'package:application_landing_page/widgets/footer_sub_widget.dart';
import 'package:flutter/material.dart';

class FooterPart extends StatelessWidget {
  final WebsiteModel model;
  const FooterPart({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            height: constraints.maxWidth > 700
                ? context.h(0.45) * (model.longDescriptionList.length / 3)
                : model.longDescriptionList.length,
            width: double.infinity,
            child: GridView.count(
              crossAxisCount: constraints.maxWidth > 700 ? 3 : 1,
              children: model.longDescriptionList
                  .map<Widget>((e) => FooterSubWidget(
                        description: e,
                        model: model,
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
