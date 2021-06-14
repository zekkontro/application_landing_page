import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:application_landing_page/models/website_model.dart';
import 'package:application_landing_page/widgets/app_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAppBar extends StatelessWidget {
  final WebsiteModel model;
  const CustomAppBar({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            AppIconWidget(
              image: model.appIcon,
            ),
            SizedBox(
              width: context.w(0.05),
            ),
            Text(
              model.title,
              style: model.titleTextStyle,
            ),
            Spacer(),
            Row(
              children: model.socialMediaAccounts
                  .map<Widget>((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: InkWell(
                            onTap: () async {
                              if (await canLaunch(e.link)) {
                                await launch(e.link);
                              }
                            },
                            child: SvgPicture.asset(
                              "assets/svg/${e.icon}",
                              color: e.color,
                              width: 30,
                            )),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
