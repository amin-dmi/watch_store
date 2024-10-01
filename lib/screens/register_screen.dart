import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_feild.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/main_button.dart';
import 'package:watch_store/widgets/registration_app_bar.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController _nameLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: RegistetonAppBar(size: size),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppDimens.large.height,
              const Avatar(),
              AppTextFeild(
                  hint: AppStrings.hintNameLastName,
                  lable: AppStrings.nameLastName,
                  controller: _nameLastName),
              AppTextFeild(
                  hint: AppStrings.hintHomeNumber,
                  lable: AppStrings.homeNumber,
                  controller: _nameLastName),
              AppTextFeild(
                  hint: AppStrings.hintAddress,
                  lable: AppStrings.address,
                  controller: _nameLastName),
              AppTextFeild(
                  hint: AppStrings.hintPostalCode,
                  lable: AppStrings.postalCode,
                  controller: _nameLastName),
              AppTextFeild(
                hint: AppStrings.location,
                lable: AppStrings.hintLocation,
                controller: _nameLastName,
                icon: const Icon(Icons.location_on),
              ),
              MainButton(
                  text: AppStrings.next,
                  onPressed: () =>
                      Navigator.pushNamed(context, screensNames.mainScreen)),
              AppDimens.large.height,
            ],
          ),
        ),
      ),
    ));
  }
}
