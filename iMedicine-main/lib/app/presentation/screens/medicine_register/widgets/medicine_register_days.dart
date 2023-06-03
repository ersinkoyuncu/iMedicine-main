import 'package:flutter/material.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../gen/colors.gen.dart';

class MedicineRegisterDays extends StatefulWidget {
  const MedicineRegisterDays({super.key});

  @override
  State<MedicineRegisterDays> createState() => _MedicineRegisterDaysState();
}

class _MedicineRegisterDaysState extends State<MedicineRegisterDays> {
  var _groupValue = "";
  var _days = [
    "Pazartesi",
    "Salı",
    "Çarşamba",
    "Perşembe",
    "Cuma",
    "Cumartesi",
    "Pazar"
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
                  "İlacını hangi günler kullanıyorsun?",
                  style: AppFontStyle.subTitleRegular(
                    color: ColorName.appWhite,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: _days.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10, top: 8),
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
                          child: Text(_days[index],
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
