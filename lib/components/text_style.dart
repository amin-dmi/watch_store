import 'package:flutter/material.dart';
import 'package:watch_store/gen/fonts.gen.dart';
import 'package:watch_store/res/colors.dart';

class AppTextStyle {
  
  AppTextStyle._();

static TextStyle title=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 14.0,
  color: AppColors.title
);


static TextStyle productBgTitle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 16.0,
  color: AppColors.title,
  fontWeight: FontWeight.normal
);

static TextStyle hint=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 14.0,
  color: AppColors.hint
);


static TextStyle avataTextStyle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 11.0,
  color: AppColors.title,
  fontWeight: FontWeight.w300
);
static TextStyle mainButtonStyle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 15.0,
  color: AppColors.mainButtonText,
  fontWeight: FontWeight.w500
);


static TextStyle primaryThemeTextStylr=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 15.0,
  color: AppColors.primaryColor,
  fontWeight: FontWeight.w500
);


static TextStyle btmNavActive=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 12.0,
  color: AppColors.btmNavActiveItem
);


static TextStyle btmNavInActive=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 12.0,
  color: AppColors.btmNavInActiveItem
);


}