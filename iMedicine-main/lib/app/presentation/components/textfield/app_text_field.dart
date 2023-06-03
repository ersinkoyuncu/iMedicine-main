import 'package:flutter/material.dart';

import '../../../../core/constants/app_helper.dart';
import '../../../../core/constants/font_styles.dart';
import '../../../../gen/colors.gen.dart';

// ignore: must_be_immutable
class AppTextField extends StatefulWidget {
  String titleHintText = "";
  TextEditingController controller;
  VoidCallback? onTapTrailingButton;
  bool? isObscure;
  Widget? leadingIcon;
  TextInputType? textInputType;
  AppTextField(
      {super.key,
      required this.titleHintText,
      required this.controller,
      this.onTapTrailingButton,
      this.isObscure,
      this.leadingIcon,
      this.textInputType});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 54,
            child: TextField(
              style: AppFontStyle.subTitleRegular(color: ColorName.appWhite),
              controller: widget.controller,
              autocorrect: true,
              obscureText: widget.isObscure ?? false,
              keyboardType: widget.textInputType,
              decoration: InputDecoration(
                prefixIcon: widget.leadingIcon,
                suffixIcon: widget.isObscure != null
                    ? IconButton(
                        onPressed: () {
                          if (isNotNull(widget.onTapTrailingButton)) {
                            setState(() {
                              widget.onTapTrailingButton!();
                              if (widget.isObscure != null) {
                                widget.isObscure = !widget.isObscure!;
                              }
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: ColorName.appWhite,
                        ),
                      )
                    : null,
                hintText: widget.titleHintText,
                hintStyle: const TextStyle(color: Colors.white),
                filled: true,
                fillColor: ColorName.appBlack.withOpacity(0.15),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: ColorName.appWhite, width: 2),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: ColorName.appWhite, width: 3),
                ),
              ),
            )));
  }
}
