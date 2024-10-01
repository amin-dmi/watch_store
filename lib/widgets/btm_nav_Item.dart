import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/res/dimens.dart';

class BtmNavItem extends StatelessWidget {
  String iconSvgPath;
  String text;
  bool isActive;
  void Function() onTap;

  BtmNavItem({
    required this.iconSvgPath,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppColors.btmNavColors,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                width: 30,
                iconSvgPath,
                colorFilter: ColorFilter.mode(
                    isActive
                        ? AppColors.btmNavActiveItem
                        : AppColors.btmNavInActiveItem,
                    BlendMode.srcIn),
              ),
              const SizedBox(
                height: AppDimens.small,
              ),
              Text(
                text,
                style: isActive
                    ? LightAppTextStyle.btmNavActive
                    : LightAppTextStyle.btmNavInActive,
              )
            ],
          ),
        ),
      ),
    );
  }
}
