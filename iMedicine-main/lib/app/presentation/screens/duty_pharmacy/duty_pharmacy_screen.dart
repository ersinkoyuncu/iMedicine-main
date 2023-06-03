import 'package:flutter/material.dart';
import 'package:imedicine/app/presentation/screens/duty_pharmacy/widgets/duty_pharmacy_header.dart';
import 'package:imedicine/app/presentation/screens/duty_pharmacy/widgets/duty_pharmacy_list.dart';
import 'package:imedicine/gen/colors.gen.dart';

class DutyPharmacyScreen extends StatefulWidget {
  const DutyPharmacyScreen({super.key});

  @override
  State<DutyPharmacyScreen> createState() => _DutyPharmacyScreenState();
}

class _DutyPharmacyScreenState extends State<DutyPharmacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nöbetçi Eczane"),
        backgroundColor: Colors.transparent, elevation: 0
        ),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 100),
              DutyPharmacyHeader(),
              Divider(color: ColorName.appFrangipani, thickness: 1),
              SizedBox(height: 8),
              Expanded(child: DutyPharmacyList())
            ],
          ),
        ),
      ),
    );
  }
}