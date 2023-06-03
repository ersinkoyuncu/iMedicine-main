import 'package:flutter/material.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/colors.gen.dart';

class ControlGain extends StatelessWidget {
  const ControlGain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kazanç",
          style: AppFontStyle.titleRegular(
            color: ColorName.appFrangipani,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: ColorName.appWhite),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              SizedBox(width: 24),
              Icon(Icons.monetization_on, color: ColorName.appFrangipani),
              SizedBox(width: 12),
              Text(
                "2.576₺",
                style: AppFontStyle.headerTextBold(color: ColorName.appSundown),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
