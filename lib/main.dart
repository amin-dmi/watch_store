import 'package:flutter/material.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/mainscreen/main_Screen.dart';
import 'package:watch_store/screens/product_list_screen.dart';

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
      home: ProductListScreen(),
      //routes: routes  ,
      initialRoute: screensNames.root,
    );
  }
}