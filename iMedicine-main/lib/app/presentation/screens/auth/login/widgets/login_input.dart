import 'package:flutter/material.dart';

import '../../../../../../gen/colors.gen.dart';
import '../../../../components/textfield/app_text_field.dart';

class LoginInput extends StatelessWidget {
  LoginInput({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: AppTextField(
            controller: _emailController,
            titleHintText: "Email",
            leadingIcon: const Icon(Icons.email, color: ColorName.appWhite),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: AppTextField(
            controller: _passwordController,
            titleHintText: "Password",
            isObscure: true,
            onTapTrailingButton: () {},
            leadingIcon: const Icon(Icons.password, color: ColorName.appWhite),
          ),
        )
      ],
    );
  }
}
