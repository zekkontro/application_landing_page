import 'package:application_landing_page/core/extension/context_extension.dart';
import 'package:application_landing_page/models/website_model.dart';
import 'package:application_landing_page/widgets/app_icon_widget.dart';
import 'package:application_landing_page/widgets/app_store_badge.dart';
import 'package:application_landing_page/widgets/play_store_badge.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final WebsiteModel model;
  const BodyWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: model.screenshots.length,
      child: Container(
        child: LayoutBuilder(
          builder: (context, BoxConstraints constraints) {
            if (constraints.maxWidth > 700) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 400,
                    child: DeviceFrame(
                      isFrameVisible: true,
                      orientation: Orientation.portrait,
                      device: Devices.ios.iPhone11ProMax,
                      screen: TabBarView(
                          children: model.screenshots
                              .map((e) => Image.asset("assets/screenshots/$e"))
                              .toList()),
                    ),
                  ),
                  SizedBox(
                    width: context.w(0.2),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppIconWidget.large(context, model.appIcon),
                          SizedBox(
                            width: context.w(0.02),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                model.title,
                                style: model.titleTextStyle,
                              ),
                              SizedBox(
                                height: context.h(0.02),
                              ),
                              model.isFree
                                  ? Text(
                                      "Free",
                                      style: model.descriptionStyle,
                                    )
                                  : Text(
                                      model.price,
                                      style: model.descriptionStyle,
                                    ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.h(0.08),
                      ),
                      SizedBox(
                        width: context.w(0.45),
                        child: Text(
                          model.shortDescription,
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          style: model.descriptionTitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: context.h(0.1),
                      ),
                      model.androidSupport
                          ? PlayStoreBadge(
                              id: model.androidID,
                            )
                          : SizedBox(),
                      SizedBox(
                        height: context.h(0.1),
                      ),
                      model.iosSupport
                          ? AppStoreBadge(
                              id: model.appstoreID,
                            )
                          : SizedBox(),
                    ],
                  )
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 400,
                    child: DeviceFrame(
                      isFrameVisible: true,
                      orientation: Orientation.portrait,
                      device: Devices.ios.iPhone11ProMax,
                      screen: TabBarView(
                          children: model.screenshots
                              .map((e) => Image.asset("assets/screenshots/$e"))
                              .toList()),
                    ),
                  ),
                  SizedBox(
                    height: context.h(0.08),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppIconWidget.large(context, model.appIcon),
                          SizedBox(
                            width: context.w(0.02),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                model.title,
                                style: model.titleTextStyle,
                              ),
                              SizedBox(
                                height: context.h(0.02),
                              ),
                              model.isFree
                                  ? Text(
                                      "Free",
                                      style: model.descriptionStyle,
                                    )
                                  : Text(
                                      model.price,
                                      style: model.descriptionStyle,
                                    ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.h(0.08),
                      ),
                      SizedBox(
                        width: context.w(0.45),
                        child: Text(
                          model.shortDescription,
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          style: model.descriptionTitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: context.h(0.1),
                      ),
                      model.androidSupport
                          ? PlayStoreBadge(
                              id: model.androidID,
                            )
                          : SizedBox(),
                      SizedBox(
                        height: context.h(0.1),
                      ),
                      model.iosSupport
                          ? AppStoreBadge(
                              id: model.appstoreID,
                            )
                          : SizedBox(),
                    ],
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
