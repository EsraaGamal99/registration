import 'package:elmadsarah/Core/Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';


abstract class AppStyles {

  static const textStyle10 = TextStyle(
      fontSize: 10,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w400,
      color: kPrimaryColor);
  static const textStyle12 = TextStyle(
    fontSize: 12,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const textStyle12_300 = TextStyle(
    fontSize: 12,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );
  static const textStyle12_500 = TextStyle(
    fontSize: 12,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
  );
  static const textStyle12_700 = TextStyle(
    fontSize: 12,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static const textStyle14_700 = TextStyle(
    fontSize: 14,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
  );
  static const textStyle14_500 = TextStyle(
    fontSize: 14,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
  );
  static const textStyle14_400 = TextStyle(
    fontSize: 14,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    color: greyColor,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const textStyle16_400 = TextStyle(
    fontSize: 16,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w400,
    color: Color(0xFF373C3F),
  );
  static const textStyle16_500 = TextStyle(
    fontSize: 16,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    color: greyColor,
  );
  static const textStyle16_700 = TextStyle(
    fontSize: 16,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
  );
  static const textStyle16_900 = TextStyle(
    fontSize: 16,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w900,
    //color: kTextColor,
  );
  static var textStyle20_700 = TextStyle(
    fontSize: 20.sp,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w700,
    color: kPrimaryColor,
  );

  static const textStyle20_500 = TextStyle(
    fontSize: 20,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static TextStyle textStyle24 = TextStyle(
    fontSize: 24,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w900,
    color: Colors.grey.withOpacity(0.5),
  );
  static var textStyle32 = TextStyle(
    fontSize: 32.sp,
    fontFamily: kFontFamily,
    fontWeight: FontWeight.w500,
    color: kPrimaryColor,
  );
}
