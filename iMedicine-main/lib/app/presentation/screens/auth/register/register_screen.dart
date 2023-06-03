import 'package:flutter/material.dart';

import '../../../../../core/helpers/navigation/navigation_helper.dart';
import '../../../../../gen/colors.gen.dart';
import '../../../../routes/routes.dart';
import '../../../components/buttons/app_primary_button.dart';
import 'widgets/register_header.dart';
import 'widgets/register_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [ColorName.appMelrose, ColorName.appBlack],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const RegisterHeader(),
              SizedBox(height: 16),
              RegisterInput(),
              Container(
                margin: EdgeInsets.only(top: 16),
                height: 48,
                width: 150,
                child: AppPrimaryButton(
                  title: "Register",
                  titleColor: ColorName.appWhite,
                  color: ColorName.appMelrose,
                  onTap: () {
                    Navigation.pushNamedAndRemoveAll(
                        root: AppRoute.mainBottomNavigationBarScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
