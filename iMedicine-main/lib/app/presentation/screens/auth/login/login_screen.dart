import 'package:flutter/material.dart';

import '../../../../../core/constants/font_styles.dart';
import '../../../../../core/helpers/navigation/navigation_helper.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../routes/routes.dart';
import '../../../components/buttons/app_primary_button.dart';
import 'widgets/login_header.dart';
import 'widgets/login_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LoginHeader(),
              const SizedBox(
                height: 10,
              ),
              LoginInput(),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 48,
                width: 150,
                child: AppPrimaryButton(
                  title: "Login",
                  titleColor: ColorName.appWhite,
                  color: ColorName.appMelrose,
                  onTap: () {},
                ),
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                      Navigation.pushNamed(root: AppRoute.register);
 },
                child: Text(
                  "Kayıt ol ->",
                  style:
                      AppFontStyle.subTitleRegular(color: ColorName.appWhite),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
