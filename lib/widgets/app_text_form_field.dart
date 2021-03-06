import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habitat/themes/app_theme.dart';

class AppTextFormField extends StatelessWidget {
  final String hint;
  final String suffixText;
  final String prefixText;
  final String initialValue;
  final bool isObscureText;
  final bool isEmailFormat;
  final bool isPhoneFormat;
  final bool isDigitsOnly;
  final bool isCheckEmpty;
  final int textLength;
  final int minLines;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final FocusNode current;
  final FocusNode next;
  final Function(String) validator;
  final Function(String) onSave;
  final Function(String) onChange;
  final Function onTap;
  final TextEditingController controller;
  final double bottomMargin;
  final double leftMargin;
  final InputDecoration customStyle;
  final bool isDropDown;

  AppTextFormField(
    this.hint, {
    this.suffixText,
    this.prefixText,
    this.initialValue,
    this.isObscureText: false,
    this.isEmailFormat: false,
    this.isPhoneFormat: false,
    this.isDigitsOnly: false,
    this.isCheckEmpty: true,
    this.textLength: 50,
    this.minLines,
    this.inputType,
    this.inputAction: TextInputAction.next,
    this.current,
    this.next,
    this.validator,
    this.onSave,
    this.onChange,
    this.onTap,
    this.controller,
    this.bottomMargin: 0,
    this.leftMargin: 0,
    this.customStyle,
    this.isDropDown: false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            boxShadow: AppBoxShadow.normal,
            color: AppColor.white,
            borderRadius: AppBorderRadius.oval,
          ),
          child: TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              suffixText: suffixText,
              prefixText: prefixText,
              labelText: hint,
              fillColor: Colors.white,
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17, vertical: 13),
            ),
            validator: (val) {
              if (val.length == 0) {
                return "Email cannot be empty";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontFamily: "Poppins",
            ),
          ),
        ),
        if (isDropDown)
          Positioned.fill(
            right: 16,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_drop_down_circle,
                color: AppColor.blue,
              ),
            ),
          )
      ],
    );
  }
}
