import 'package:flutter/material.dart';

import '../../../../../../core/constants/font_styles.dart';
import '../../../../../../gen/colors.gen.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Create Account",
            style: AppFontStyle.headerTextBold(color: ColorName.appWhite)),
        const SizedBox(height: 8),
        Text("to get started now",
            style: AppFontStyle.headerTextRegular(color: ColorName.appWhite)),
      ],
    );
  }
}
