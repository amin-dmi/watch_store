import 'package:flutter/material.dart';
import 'package:watch_store/components/theme.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/product_single_screen.dart';

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
      home: ProductSingleScreen(),
      //routes: routes  ,
      initialRoute: screensNames.root,
    );
  }
}