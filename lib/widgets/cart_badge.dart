import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({super.key, this.count = 0});
  final count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(width: 32, height: 32),
        SvgPicture.asset(
          Assets.svg.cart,
          colorFilter: const ColorFilter.mode(
            Colors.black,
            BlendMode.srcIn,
          ),
        ),
        Visibility(
          visible: this.count > 0 ? true : false,
          child: Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimens.medium),
                  color: Colors.red),
              child: Text(
                count.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}