import 'package:flutter/material.dart';

import '../../gen/colors.gen.dart';

class AppFontStyle {
  // 15
  static TextStyle subTitleRegular({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 15, color: color);
  }

  static TextStyle subTitleBold({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color);
  }

  // 18
  static TextStyle titleRegular({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 18, color: color);
  }

  static TextStyle titleBold({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color);
  }

  // 24
  static TextStyle headerTextRegular({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 24, color: color);
  }

  static TextStyle headerTextBold({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color);
  }

  // 12
  static TextStyle cardTitleRegular({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 12, color: color);
  }

  static TextStyle cardTitleBold({Color color = ColorName.appBlack}) {
    return TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color);
  }
}
