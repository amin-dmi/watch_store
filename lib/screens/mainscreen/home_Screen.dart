import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_slider.dart';
import 'package:watch_store/widgets/cat_widget.dart';
import 'package:watch_store/widgets/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              ),
              const SizedBox(height: AppDimens.large,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.all(AppDimens.medium),
                                width: 200,
                                height: 298,
                                color: Colors.red,
                              )),
                    ),
                   VerticalText(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [              
                SvgPicture.asset(Assets.svg.back),
                Text("مشاهده همه"),
              ],          
            ),
            Text("شگفت انگیز")
          ],
        ),
      ),
    ) ;
  }
}