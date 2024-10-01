import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_slider.dart';
import 'package:watch_store/widgets/cat_widget.dart';
import 'package:watch_store/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBtn(
                on_Tap: () {},
              ),
              const AppSlider(
                imgList: [],
              ),
              //cat...
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CatWidget(
                      colors: AppColors.catDesktopColors,
                      iconPath: Assets.svg.desktop,
                      ontap: () {},
                      title: AppStrings.desktop),
                  CatWidget(
                      colors: AppColors.catDigitalColors,
                      iconPath: Assets.svg.digital,
                      ontap: () {},
                      title: AppStrings.digital),
                  CatWidget(
                      colors: AppColors.catSmartColors,
                      iconPath: Assets.svg.smart,
                      ontap: () {},
                      title: AppStrings.smart),
                  CatWidget(
                      colors: AppColors.catClasicColors,
                      iconPath: Assets.svg.clasic,
                      ontap: () {},
                      title: AppStrings.classic),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
