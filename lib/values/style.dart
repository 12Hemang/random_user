import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_user/values/colors.dart';

const fontFamily = "Urbanist";

final textThin = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w100,
  fontSize: 14.sp,
  color: textColor,
);
final textLight = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w200,
  fontSize: 14.sp,
  color: textColor,
);
final textRegular = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w300,
  fontSize: 14.sp,
  color: textColor,
);

final textMedium = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w400,
  fontSize: 14.sp,
  color: textColor,
);

final textSemiBold = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w500,
  fontSize: 14.sp,
  color: textColor,
);
final textBold = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w600,
  fontSize: 14.sp,
  color: textColor,
);
final textExtraBold = TextStyle(
  fontFamily: fontFamily,
  decoration: TextDecoration.none,
  fontWeight: FontWeight.w700,
  fontSize: 14.sp,
  color: textColor,
);

TextStyle get textRegular15 => textRegular.copyWith(fontSize: 15.sp);
TextStyle get textRegular16 => textRegular.copyWith(fontSize: 16.sp);
TextStyle get textRegular18 => textRegular.copyWith(fontSize: 18.sp);
TextStyle get textRegular22 => textRegular.copyWith(fontSize: 22.sp);
TextStyle get textRegular14White => textRegular.copyWith(color: whiteColor);
TextStyle get textRegular15Hint => textRegular15.copyWith(color: hintColor);
TextStyle get textRegular22White => textRegular22.copyWith(color: whiteColor);

TextStyle get textBold14 => textBold.copyWith(fontSize: 14.sp);
TextStyle get textBold16 => textBold.copyWith(fontSize: 16.sp);
TextStyle get textBold18 => textBold.copyWith(fontSize: 18.sp);
TextStyle get textBold24 => textBold.copyWith(fontSize: 24.sp);
TextStyle get textBold26 => textBold.copyWith(fontSize: 26.sp);
TextStyle get textBold14Primary => textBold14.copyWith(color: primaryColor);
TextStyle get textBold16Primary => textBold16.copyWith(color: primaryColor);
TextStyle get textBold18Primary => textBold18.copyWith(color: primaryColor);
TextStyle get textBold18White => textBold18.copyWith(color: whiteColor);
TextStyle get textBold24White => textBold24.copyWith(color: whiteColor);
TextStyle get textBold26White => textBold26.copyWith(color: whiteColor);

TextStyle get textSemiBold15 => textSemiBold.copyWith(fontSize: 15.sp);
TextStyle get textSemiBold16 => textSemiBold.copyWith(fontSize: 16.sp);
TextStyle get textSemiBold18 => textSemiBold.copyWith(fontSize: 18.sp);
TextStyle get textSemiBold18White => textSemiBold18.copyWith(color: whiteColor);
