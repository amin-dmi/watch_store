import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension SizedBoxExtention on double{

  SizedBox get height=>SizedBox(height: toDouble(),);
  SizedBox get width=>SizedBox(width: toDouble(),);

}


extension Intger on int{
  String get separateWithComa{
  final numberFormat= NumberFormat.decimalPattern() ;
  return numberFormat.format(this);  
  }
}