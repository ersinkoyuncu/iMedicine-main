import 'package:flutter/material.dart';

import '../../../../../../core/constants/font_styles.dart';
import '../../../../../../gen/colors.gen.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcome,",
            style: AppFontStyle.headerTextBold(color: ColorName.appWhite)),
        const SizedBox(height: 8),
        Text("Glad to see you",
            style: AppFontStyle.headerTextRegular(color: ColorName.appWhite)),
      ],
    );
  }
}
