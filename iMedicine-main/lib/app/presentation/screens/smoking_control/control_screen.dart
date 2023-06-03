import 'package:flutter/material.dart';

import '../../../../core/helpers/navigation/navigation_helper.dart';
import '../../../../gen/colors.gen.dart';
import '../../../routes/routes.dart';
import '../../components/buttons/app_primary_button.dart';
import 'widgets/control_gain.dart';
import 'widgets/control_header.dart';
import 'widgets/control_stats.dart';

class SmokeControlScreen extends StatefulWidget {
  const SmokeControlScreen({super.key});

  @override
  State<SmokeControlScreen> createState() => _SmokeControlScreenState();
}

class _SmokeControlScreenState extends State<SmokeControlScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorName.appMelrose, ColorName.appBlack],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24),
              ControlHeader(),
              SizedBox(height: 24),
              ControlStats(),
              SizedBox(height: 24),
              ControlGain(),
              SizedBox(height: 40),
              Center(
                  child: SizedBox(
                      height: 40,
                      width: 120,
                      child: AppPrimaryButton(
                          title: "Güncelle",
                          titleColor: ColorName.appBlack,
                          color: ColorName.appWhite,
                          onTap: () {
                            Navigation.pushNamed(
                                root: AppRoute.cigaretteDetail);
                          }))),
            ],
          ),
        ),
      ),
    );
  }
}
