import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayStoreBadge extends StatelessWidget {
  final String id;
  const PlayStoreBadge({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 700) {
          return InkWell(
            onTap: () async {
              String link = "https://play.google.com/store/apps/details?id=$id";
              if (await canLaunch(link)) {
                await launch(link);
              }
            },
            child: Container(
              width: context.w(0.3),
              child: Image.asset("assets/play_store_badge.png"),
            ),
          );
        } else {
          return InkWell(
            onTap: () async {
              String link = "https://play.google.com/store/apps/details?id=$id";
              if (await canLaunch(link)) {
                await launch(link);
              }
            },
            child: Container(
              width: context.w(0.7),
              child: Image.asset("assets/play_store_badge.png"),
            ),
          );
        }
      },
    );
  }
}
