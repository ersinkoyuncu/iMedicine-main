
import 'package:flutter/material.dart';

import '../../../components/dropdown/app_dropdown_button.dart';

class MedicineRegisterInput extends StatelessWidget {
  const MedicineRegisterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: AppDropDown(
                  hint: "1. Alanı seçiniz",
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
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                width: double.infinity,
                child: AppDropDown(
                  hint: "2. Alanı seçiniz",
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
            ),
          ],
        ),
        SizedBox(height: 16),
        Container(
          width: double.infinity,
          child: AppDropDown(
            hint: "3. Alanı seçiniz",
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
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                child: AppDropDown(
                  hint: "1. Alanı seçiniz",
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
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                width: double.infinity,
                child: AppDropDown(
                  hint: "2. Alanı seçiniz",
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
            ),
          ],
        ),
      ],
    );
  }
}
