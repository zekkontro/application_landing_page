import 'dart:convert';
import 'dart:core';

import 'package:application_landing_page/models/website_model.dart';
import 'package:flutter/cupertino.dart';

class JSONService {
  static Future<WebsiteModel> readAllJsonDatas(BuildContext context) async {
    var data = await DefaultAssetBundle.of(context).loadString("config.json");
    print(jsonDecode(data));
    return WebsiteModel.fromMap(jsonDecode(data));
  }
}
