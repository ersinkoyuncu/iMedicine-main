import 'package:flutter/material.dart';

import '../../../../core/constants/font_styles.dart';
import '../../../../gen/colors.gen.dart';

class AppPrimaryButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color? titleColor;
  final VoidCallback onTap;

  const AppPrimaryButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onTap,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: onTap,
      child: Text(
        title,
        style: AppFontStyle.subTitleRegular(
            color: titleColor ?? ColorName.appBlack),
      ),
    );
  }
}
