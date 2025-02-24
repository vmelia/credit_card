import 'package:flutter/widgets.dart';

class SizeConfig {
  static double getHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  static double getFontSize(context, double size) {
    var width = SizeConfig.getWidth(context);
    return size * width / 414;
  }
}
