import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:application_landing_page/core/services/json_service.dart';
import 'package:application_landing_page/models/website_model.dart';
import 'package:application_landing_page/widgets/home/body.dart';
import 'package:application_landing_page/widgets/home/custom_app_bar.dart';
import 'package:application_landing_page/widgets/home/footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: JSONService.readAllJsonDatas(context),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? Scaffold(
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularProgressIndicator.adaptive(
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Loading Page..."),
                      ],
                    ),
                  ),
                )
              : Scaffold(
                  backgroundColor: snapshot.data.backgroundColor,
                  body: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: context.w(0.2)),
                        child: Column(
                          children: [
                            CustomAppBar(
                              model: snapshot.data,
                            ),
                            SizedBox(
                              height: context.h(0.2),
                            ),
                            BodyWidget(
                              model: snapshot.data,
                            ),
                            SizedBox(
                              height: context.h(0.2),
                            ),
                            FooterPart(
                              model: snapshot.data,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
        });
  }
}
