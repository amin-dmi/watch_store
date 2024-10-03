import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_feild.dart';
import 'package:watch_store/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

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
            AppDimens.medium.height,
            Text(
              AppStrings.otpCodeSendFor
                  .replaceAll(AppStrings.replace, "01959300142"),
              style: AppTextStyle.title,
            ),
            AppDimens.small.height,
            Text(
              AppStrings.wrongNumberEditNumber,
              style: AppTextStyle.primaryThemeTextStylr,
            ),
            (AppDimens.large * 2).height,
            AppTextFeild(
                perFixLabel: "2:43",
                hint: AppStrings.hintVerificationCode,
                lable: AppStrings.enterVerificationCode,
                controller: _controller),
            MainButton(
              text: AppStrings.next,
              onPressed: () =>
                  Navigator.pushNamed(context, screensNames.registerScreen),
            ),
          ],
        ),
      )),
    );
  }
}
