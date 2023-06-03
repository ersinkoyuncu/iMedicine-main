import 'package:flutter/material.dart';

import '../../../../core/constants/font_styles.dart';
import '../../../../core/helpers/navigation/navigation_helper.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigation.pushNamedAndRemoveAll(root: AppRoute.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [ColorName.appMelrose, ColorName.appBlack],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  margin: const EdgeInsets.all(40),
                  child: Assets.images.appSplash.image(),
                ),
              ),
              Expanded(
                  child: Text("İLACIN BENDE",
                      style: AppFontStyle.titleBold(color: ColorName.appWhite)))
            ],
          ),
        ),
      ),
    );
  }
}
