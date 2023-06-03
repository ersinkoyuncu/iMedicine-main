///TODO: created Ersin

import 'package:flutter/material.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/colors.gen.dart';

class HomeMedicines extends StatefulWidget {
  const HomeMedicines({super.key});

  @override
  State<HomeMedicines> createState() => _HomeMedicinesState();
}

class _HomeMedicinesState extends State<HomeMedicines> {
  var _groupValue = "";
  var _medicines = [      //KULLANICININ KULLANDIĞI İLAÇLAR GİRİLECEK
    "Parol",
    "Arvales",
    "Ella",
    "Gaviscon",
    "Coldaway",
    "Dolorex",
    "Coraspin"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Kullandığım İlaçlar",
                  style: AppFontStyle.subTitleRegular(
                    color: ColorName.appWhite,
                   
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 110,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: _medicines.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 14, top: 8),
                    width: 80,
                    decoration: BoxDecoration(
                        color: ColorName.appWhite,
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(_medicines[index],
                              textAlign: TextAlign.center,
                              style: AppFontStyle.cardTitleRegular(
                                  color: ColorName.appBlack)),
                        ),
                        Radio(
                          fillColor:
                              MaterialStateProperty.all(ColorName.appBlack),
                          value: "$index",
                          groupValue: _groupValue,
                          onChanged: (value) {
                            setState(() {
                              _groupValue = value.toString();
                            });
                          },
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
