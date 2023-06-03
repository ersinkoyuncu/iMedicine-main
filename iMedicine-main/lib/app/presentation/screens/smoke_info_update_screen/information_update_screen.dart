import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../components/buttons/app_primary_button.dart';
import 'widgets/information_input.dart';

class InformationUpdateScreen extends StatefulWidget {
  const InformationUpdateScreen({super.key});

  @override
  State<InformationUpdateScreen> createState() =>
      _InformationUpdateScreenState();
}

class _InformationUpdateScreenState extends State<InformationUpdateScreen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InformationInput(),
              SizedBox(height: 24),
              Center(
                child: SizedBox(
                  height: 44,
                  width: 140,
                  child: AppPrimaryButton(
                      title: "Güncelle",
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
