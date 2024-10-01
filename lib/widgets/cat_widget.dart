import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatWidget extends StatelessWidget {
  const CatWidget(
      {super.key,
      required this.colors,
      required this.iconPath,
      required this.ontap,
      required this.title});

  final title;
  final ontap;
  final colors;
  final iconPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(AppDimens.small),
              width: size.height * .1,
              height: size.height * .1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: colors),
                  borderRadius: BorderRadius.circular(AppDimens.large)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height:68,
                    child: SvgPicture.asset(iconPath)),
                ],
              )),
          const SizedBox(
            height: AppDimens.small * .5,
          ),
          Text(
            title,
            style: LightAppTextStyle.title.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

