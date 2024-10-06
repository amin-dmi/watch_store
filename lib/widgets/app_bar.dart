
import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, required this.child});

  @override
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          height: preferredSize.height,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppDimens.medium),
                  bottomRight: Radius.circular(AppDimens.medium)),
              color: AppColors.appBar,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: AppColors.shadow,
                    offset: Offset(0, 2),
                    blurRadius: 2)
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.medium),
            child: child,
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50.0);
}

