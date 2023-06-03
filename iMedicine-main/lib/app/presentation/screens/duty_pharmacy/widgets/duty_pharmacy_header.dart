import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/components/dropdown/app_dropdown_button.dart';

class DutyPharmacyHeader extends StatelessWidget {
  const DutyPharmacyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: AppDropDown(
            hint: "İl Seçiniz",
            items: const [
              "Lorem Impsum 1",
              "Lorem Impsum 2",
              "Lorem Impsum 3",
              "Lorem Impsum 4",
              "Lorem Impsum 5",
            ],
            onChanged: (value) {},
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: AppDropDown(
            hint: "İlçe Seçiniz",
            items: const [
              "Lorem Impsum 1",
              "Lorem Impsum 2",
              "Lorem Impsum 3",
              "Lorem Impsum 4",
              "Lorem Impsum 5",
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}