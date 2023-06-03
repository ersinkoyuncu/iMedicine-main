import 'package:flutter/material.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/colors.gen.dart';

class ControlStats extends StatelessWidget {
  const ControlStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "İstatistik",
          style: AppFontStyle.titleRegular(
            color: ColorName.appFrangipani,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: ColorName.appWhite),
              borderRadius: BorderRadius.circular(8)),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "0",
                      style: AppFontStyle.subTitleBold(
                        color: ColorName.appWhite,
                      ),
                    ),
                    
                    Text(
                      "Year",
                      style: AppFontStyle.subTitleRegular(
                        color: ColorName.appFrangipani,
                      ),
                    ),
                  ],
                )),
                const VerticalDivider(color: ColorName.appWhite, thickness: 1),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "4",
                      style: AppFontStyle.subTitleBold(
                        color: ColorName.appWhite,
                      ),
                    ),
                    Text(
                      "Month",
                      style: AppFontStyle.subTitleRegular(
                        color: ColorName.appFrangipani,
                      ),
                    ),
                  ],
                )),
                const VerticalDivider(color: ColorName.appWhite, thickness: 1),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "2",
                      style: AppFontStyle.subTitleBold(
                        color: ColorName.appWhite,
                      ),
                    ),
                    Text(
                      "Week",
                      style: AppFontStyle.subTitleRegular(
                        color: ColorName.appFrangipani,
                      ),
                    ),
                  ],
                )),
                const VerticalDivider(color: ColorName.appWhite, thickness: 1),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "4",
                      style: AppFontStyle.subTitleBold(
                        color: ColorName.appWhite,
                      ),
                    ),
                    Text(
                      "Day",
                      style: AppFontStyle.subTitleRegular(
                        color: ColorName.appFrangipani,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
