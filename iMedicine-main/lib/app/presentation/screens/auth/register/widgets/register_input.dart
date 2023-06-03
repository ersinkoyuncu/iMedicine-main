import 'package:flutter/material.dart';

import '../../../../../../gen/colors.gen.dart';
import '../../../../components/dropdown/app_dropdown_button.dart';
import '../../../../components/textfield/app_text_field.dart';

class RegisterInput extends StatelessWidget {
  RegisterInput({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: AppTextField(
            controller: _emailController,
            titleHintText: "Email",
            leadingIcon:
                const Icon(Icons.email_outlined, color: ColorName.appWhite),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: AppTextField(
            controller: _passwordController,
            titleHintText: "Password",
            isObscure: true,
            onTapTrailingButton: () {},
            leadingIcon: const Icon(Icons.lock_outline_rounded,
                color: ColorName.appWhite),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: AppTextField(
            controller: _ageController,
            titleHintText: "Yaşınızı Giriniz",
            textInputType: TextInputType.number,
            leadingIcon: const Icon(Icons.format_list_numbered,
                color: ColorName.appWhite),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: AppDropDown(
              hint: "İl seçiniz",
              items: const [
                "Lorem Impsum 1",
                "Lorem Impsum 2",
                "Lorem Impsum 3",
                "Lorem Impsum 4",
                "Lorem Impsum 5",
              ],
              onChanged: (value) {}),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: AppDropDown(
              hint: "İlçe seçiniz",
              items: const [
                "Lorem Impsum 1",
                "Lorem Impsum 2",
                "Lorem Impsum 3",
                "Lorem Impsum 4",
                "Lorem Impsum 5",
              ],
              onChanged: (value) {}),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: AppDropDown(
              hint: "Sigara içiyor musunuz?",
              items: const ["Evet", "Hayır"],
              onChanged: (value) {}),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: AppDropDown(
              hint: "Düzenli kullandığın ilacın var mı?",
              items: ["Evet", "Hayır"],
              onChanged: (value) {}),
        ),
      ],
    );
  }
}
