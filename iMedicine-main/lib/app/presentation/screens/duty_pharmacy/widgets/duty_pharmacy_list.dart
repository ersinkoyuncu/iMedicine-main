import 'package:flutter/material.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/colors.gen.dart';

class DutyPharmacyList extends StatelessWidget {
  const DutyPharmacyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) {
          return Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: ColorName.appBlack.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8)),
              child: ListTile(
                title: Text("GÖKKUŞAĞI ECZANESİ",
                    style: AppFontStyle.titleBold(color: ColorName.appWhite)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Mehmetçik, 1299. Sk. D:No:41, 20150, 20150 Pamukkale/Denizli",
                        style: AppFontStyle.cardTitleRegular(
                            color: ColorName.appGray)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.phone, color: ColorName.appFrangipani),
                        const SizedBox(width: 8),
                        Text("(0258) 211 20 10",
                            style: AppFontStyle.cardTitleRegular(
                                color: ColorName.appGray))
                      ],
                    )
                  ],
                ),
                leading: Assets.images.imgPharmacy.image(height: 50, width: 50),
                trailing: Icon(Icons.location_on,
                    size: 30, color: ColorName.appSundown),
              ));
        });
  }
}

/*
Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Assets.images.imgPharmacy.image(height: 50, width: 50),
                  ],
                ),
                Text("GÖKKUŞAĞI ECZANESİ", style: AppFontStyle.titleRegular(color: ColorName.appWhite)),
              ],
            ),
          ],
        )*/