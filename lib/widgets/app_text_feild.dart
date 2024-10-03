import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';

class AppTextFeild extends StatelessWidget {
  final String lable;
  final perFixLabel;
  final String hint;
  TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  TextInputType? inputType;

  AppTextFeild(
      {required this.hint,
      required this.lable,
      this.perFixLabel = "",
      required this.controller,
      this.icon = const SizedBox(),
      this.textAlign = TextAlign.center,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(AppDimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(perFixLabel,style: AppTextStyle.hint,),
                Text(lable,style: AppTextStyle.title,),
              ],
            ),
          ),
          AppDimens.medium.height,
          SizedBox(
            height: size.height * .07,
            width: size.width * 0.75,
            child: TextField(              
              textAlign: textAlign,
              keyboardType: inputType,
              decoration: InputDecoration(hintText: hint, prefixIcon: icon,hintStyle: AppTextStyle.hint),
            ),
          ),
        ],
      ),
    );
  }
}
