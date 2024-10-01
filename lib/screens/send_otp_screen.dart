import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_feild.dart';
import 'package:watch_store/widgets/main_button.dart';

class SendOtpScreen extends StatelessWidget {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            (AppDimens.large * 2).height,
            AppTextFeild(
                hint: AppStrings.hintPhoneNumber,
                lable: AppStrings.enterYourNumber,
                controller: _controller),
            MainButton(
              text: AppStrings.next,
              onPressed: () =>
                  Navigator.pushNamed(context, screensNames.getOtopScreen),
            ),
          ],
        ),
      )),
    );
  }
}
