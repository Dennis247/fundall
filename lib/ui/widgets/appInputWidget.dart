import 'package:flutter/material.dart';
import 'package:mobile_mini_project/utils/appColors.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';

class AppTextInputWIdget extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final Function suffixtap;
  final bool obscureText;
  final TextEditingController controller;
  final Function validator;
  final TextInputType keyboardType;

  const AppTextInputWIdget(
      {Key key,
      this.labelText,
      this.prefixIcon,
      this.obscureText,
      this.controller,
      this.validator,
      this.keyboardType,
      this.suffixIcon,
      this.suffixtap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // style: AppTextStyles.appTextStyle,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppStyles.labelTextStyle,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.greyColor,
          ),
          suffixIcon: GestureDetector(
            onTap: suffixtap,
            child: Icon(
              suffixIcon,
              color: AppColors.greyColor,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greenColor))),
      obscureText: obscureText,
    );
  }
}

class AppTextInputWIdget2 extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;

  final TextEditingController controller;
  final Function validator;
  final TextInputType keyboardType;

  const AppTextInputWIdget2({
    Key key,
    this.labelText,
    this.prefixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // style: AppTextStyles.appTextStyle,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppStyles.labelTextStyle,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.greyColor,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.greenColor))),
    );
  }
}
