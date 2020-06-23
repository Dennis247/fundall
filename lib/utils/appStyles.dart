import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_mini_project/utils/appColors.dart';

class AppStyles {
  static final TextStyle appNormalTextSTyle = GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  static final TextStyle appNormalDarkTextSTyle = GoogleFonts.roboto(
      color: Color(0xff000000),
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);

  static final TextStyle appItalicDarkTextSTyle = GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic);

  static final TextStyle appLargeDarkTextSTyle = GoogleFonts.roboto(
      color: Color(0xff000000),
      fontSize: 25,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);

  static final TextStyle appLargeWhiteTextSTyle = GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);

  static final TextStyle smallDarkTextStyle = GoogleFonts.roboto(
      fontSize: 10, fontWeight: FontWeight.w600, color: Colors.black);

  static final TextStyle smallerDarkTextStyle = GoogleFonts.roboto(
      fontSize: 8, fontWeight: FontWeight.w600, color: Colors.black);

  static final TextStyle largeBoldTextStyle = GoogleFonts.roboto(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle largelightTextStyle = GoogleFonts.roboto(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 20,
      fontWeight: FontWeight.normal,
      height: 1);

  static final TextStyle labelTextStyle = GoogleFonts.roboto(
    color: AppColors.greyColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle labelTextStyle2 = GoogleFonts.roboto(
    color: AppColors.greyColor,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle whitelabelTextStyle = GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  static final TextStyle labelblackTextStyle = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle smalllabelblackTextStyle = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle largeWhiteTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle mediumlightTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 15,
  );

  static final TextStyle mediumlightBoldTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle smallGreenTextStyle = GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      color: AppColors.greenColor);

  static final TextStyle largeGreenTextStyle = GoogleFonts.roboto(
    color: Color(0xff4de897),
    fontSize: 17,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle largePinkTextStyle = GoogleFonts.roboto(
    color: Color(0xffff1577),
    fontSize: 17,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle smallWhiteTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle mediumWhiteTextStyle = GoogleFonts.roboto(
    color: Color(0xffffffff),
    fontSize: 17,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle mediumW2hiteTextStyle = GoogleFonts.roboto(
    color: Color(0xffffffff),
    fontSize: 17,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle verySmallTextStyle = GoogleFonts.roboto(
    color: Color(0xffc4c4c4),
    fontSize: 8,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle largeNumericTextSTyle = GoogleFonts.roboto(
    color: Color(0xffffffff),
    fontSize: 32,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
