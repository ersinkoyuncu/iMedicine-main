import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../components/buttons/app_primary_button.dart';
import 'widgets/medicine_register_days.dart';
import 'widgets/medicine_register_header.dart';
import 'widgets/medicine_register_input.dart';

class MedicineRegisterScreen extends StatefulWidget {
  const MedicineRegisterScreen({super.key});

  @override
  State<MedicineRegisterScreen> createState() => _MedicineRegisterScreenState();
}

class _MedicineRegisterScreenState extends State<MedicineRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorName.appMelrose, ColorName.appBlack],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              MedicineRegisterHeader(),
              SizedBox(height: 40),
              MedicineRegisterInput(),
              SizedBox(height: 24),
              MedicineRegisterDays(),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  height: 44,
                  width: 140,
                  child: AppPrimaryButton(
                      title: "Kaydet",
                      titleColor: ColorName.appWhite,
                      color: ColorName.appMelrose,
                      onTap: () {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
