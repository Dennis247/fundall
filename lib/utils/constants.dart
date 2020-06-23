import 'package:flutter/material.dart';

class Constants {
  static final String userName = "Chimdi";
  static final String demoImage = "assets/images/demoImg.jpeg";
  static Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
