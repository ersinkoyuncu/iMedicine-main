import 'package:flutter/material.dart';

import '../../../../core/constants/font_styles.dart';
import '../../../../gen/colors.gen.dart';

class AppDropDown extends StatefulWidget {
  final List<String> items;
  final String hint;
  Color? borderColor;
  final Function(String) onChanged;

  AppDropDown(
      {required this.items,
      required this.onChanged,
      required this.hint,
      this.borderColor});

  @override
  _AppDropDownState createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.appWhite, width: 2),
        color: widget.borderColor ?? ColorName.appBlack.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          dropdownColor: ColorName.appBlack.withOpacity(0.6),
          hint: Text(widget.hint,
              style: AppFontStyle.subTitleRegular(color: ColorName.appWhite)),
          underline: const SizedBox(),
          value: dropdownValue,
          icon: Icon(
            Icons.arrow_drop_down,
            color: ColorName.appWhite,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
              widget.onChanged(newValue);
            });
          },
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
                  style:
                      AppFontStyle.subTitleRegular(color: ColorName.appWhite)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
