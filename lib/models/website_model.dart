import 'package:application_landing_page/constants/json_key.g.dart';
import 'package:application_landing_page/core/generator/color_generator.dart';
import 'package:application_landing_page/core/generator/text_style_generator.dart';
import 'package:application_landing_page/models/long_description_model.dart';
import 'package:application_landing_page/models/social_media_accounts.dart';
import 'package:flutter/cupertino.dart';

class WebsiteModel {
  final List<dynamic> screenshots;
  final String appIcon;
  final String shortDescription;
  final bool iosSupport;
  final bool isFree;
  final String price;
  final Color backgroundColor;
  final List<LongDescription> longDescriptionList;
  final TextStyle descriptionStyle;
  final TextStyle descriptionTitleStyle;
  final TextStyle titleTextStyle;
  final bool androidSupport;
  final String androidID;
  final String appstoreID;
  final List<SocialMediaAccounts> socialMediaAccounts;
  final String title;

  WebsiteModel(
      {this.screenshots,
      this.appIcon,
      this.shortDescription,
      this.androidID,
      this.appstoreID,
      this.androidSupport,
      this.iosSupport,
      this.socialMediaAccounts,
      this.longDescriptionList,
      this.isFree,
      this.price,
      this.backgroundColor,
      this.descriptionStyle,
      this.descriptionTitleStyle,
      this.titleTextStyle,
      this.title});

  factory WebsiteModel.fromMap(Map<String, dynamic> data) {
    print(data[JsonConstants.appIconImage]);
    return WebsiteModel(
        screenshots: data[JsonConstants.screenshots],
        appIcon: data[JsonConstants.appIconImage],
        backgroundColor: ColorGenerator.generateColorFromRGBList(
            data[JsonConstants.backgroundColor]),
        descriptionStyle: TextStyleGenerator.customTextStyleGenerator(
            data[JsonConstants.descriptionStyle]),
        iosSupport: data[JsonConstants.iosSupport],
        androidID: data[JsonConstants.playStoreID],
        androidSupport: data[JsonConstants.androidSupport],
        appstoreID: data[JsonConstants.appStoreID],
        isFree: data[JsonConstants.isFree],
        title: data[JsonConstants.title],
        longDescriptionList: List<LongDescription>.generate(
            data[JsonConstants.longDescription].length,
            (index) => LongDescription.fromMap(
                data[JsonConstants.longDescription][index])),
        price: data[JsonConstants.price],
        socialMediaAccounts: List<SocialMediaAccounts>.generate(
            data[JsonConstants.socialMediaAccounts].length,
            (index) => SocialMediaAccounts.fromMap(
                data[JsonConstants.socialMediaAccounts][index])),
        shortDescription: data[JsonConstants.appShortDescription],
        titleTextStyle: TextStyleGenerator.customTextStyleGenerator(
            data[JsonConstants.titleTextStyle]),
        descriptionTitleStyle: TextStyleGenerator.customTextStyleGenerator(
            data[JsonConstants.descriptionTitleStyle]));
  }
}
