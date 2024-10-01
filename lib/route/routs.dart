import 'package:flutter/material.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/screens/mainscreen/main_Screen.dart';
import 'package:watch_store/screens/product_list_screen.dart';
import 'package:watch_store/screens/product_single_screen.dart';
import 'package:watch_store/screens/register_screen.dart';
import 'package:watch_store/screens/send_otp_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  screensNames.root: (context) => const SendOtpScreen(),
  screensNames.getOtopScreen: (context) => const GetOtpScreen(),
  screensNames.registerScreen: (context) => RegisterScreen(),
  screensNames.mainScreen: (context) => MainScreen(),
  screensNames.productListScreen: (context) => const ProductListScreen(),
  screensNames.productSingleScreen: (context) => const ProductSingleScreen(),
};
