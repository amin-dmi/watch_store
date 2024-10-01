import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

ThemeData LightTheme() {
  return ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: WidgetStateColor.resolveWith((callback) {
        if (callback.contains(WidgetState.focused)) {
          return AppColors.focusedTextFeild;
        } else {
          return AppColors.unfocusedTextFeild;
        }
      }),
      contentPadding: const EdgeInsets.all(AppDimens.medium),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.medium),
        borderSide: const BorderSide(color: AppColors.borderColor),
      ),focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.medium),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
    ),
  );
}
