import 'package:flutter/material.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/route/routs.dart';
import 'package:watch_store/screens/get_otp_screen.dart';
import 'package:watch_store/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(    
      title: 'watch Store',
      debugShowCheckedModeBanner: false,
      theme: LightTheme(),
      //home: GetOtpScreen(),
      routes: routes  ,
      initialRoute: screensNames.root,
    );
  }
}