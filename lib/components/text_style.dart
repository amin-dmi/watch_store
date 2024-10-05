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

static TextStyle tagTitle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 14.0,
  color: Color.fromARGB(255, 255, 255, 255)
);


static TextStyle productBgTitle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 16.0,
  color: AppColors.title,
  fontWeight: FontWeight.normal
);


static TextStyle productTimerStyle= const  TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 17.0,
  color:Colors.blue,
  fontWeight: FontWeight.normal
);
static TextStyle hint=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 14.0,
  color: AppColors.hint
);



static TextStyle oldPriceStyle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 12.0,
  color: AppColors.oldPrioceColor,
  fontWeight: FontWeight.w400,
  decoration: TextDecoration.lineThrough
);


static TextStyle avatarTextStyle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 11.0,
  color: AppColors.title,
  fontWeight: FontWeight.w300
);


static TextStyle amazingTextSyle=const TextStyle(
  fontFamily: FontFamily.dana300,
  fontSize: 22.0,
  color: AppColors.amazingColors,
  fontWeight: FontWeight.w800
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