import 'package:flutter/material.dart';
import 'package:mobile_mini_project/utils/appColors.dart';
import 'package:mobile_mini_project/utils/appStyles.dart';

class AppButtonWidget extends StatelessWidget {
  final double width;
  final String title;
  final Function function;

  const AppButtonWidget({Key key, this.width, this.title, this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
          child: Center(
            child: Text(title, style: AppStyles.appNormalDarkTextSTyle),
          ),
          width: width,
          height: 35,
          decoration: new BoxDecoration(
              color: AppColors.greenColor,
              borderRadius: BorderRadius.circular(3))),
    );
  }
}
