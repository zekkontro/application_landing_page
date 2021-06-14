import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  double h(double rate) => MediaQuery.of(this).size.height * rate;
  double w(double rate) => MediaQuery.of(this).size.height * rate;
}
