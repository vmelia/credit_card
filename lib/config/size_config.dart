import 'package:flutter/widgets.dart';

extension SizeConfig on BuildContext{
  double getHeight() {
    return MediaQuery.of(this).size.height;
  }

  double getWidth() {
    return MediaQuery.of(this).size.width;
  }

  double getFontSize(double size) {
    var width = getWidth();
    return size * width / 414;
  }
}
