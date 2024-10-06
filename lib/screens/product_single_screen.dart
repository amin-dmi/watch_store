import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/widgets/app_bar.dart';
import 'package:watch_store/widgets/cart_badge.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: Row(
            children: [
              const CartBadge(
                count: 2,
              ),
              Expanded(
                  child: Text(
                "Product Name",
                style: AppTextStyle.productBgTitle,
                textDirection: TextDirection.rtl,
              )),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.svg.close),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              Assets.png.unnamed.path,
              fit: BoxFit.cover,
              width: MediaQuery.sizeOf(context).width,
            ),
            Container(
              margin: const EdgeInsets.all(AppDimens.medium),
              padding: const EdgeInsets.all(AppDimens.medium),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimens.medium),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "بنسر",
                    style: AppTextStyle.productTitle,
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    "مسواک بنسر مدل اکسترا با برس متوسط 3 عددی",
                    style: AppTextStyle.caption,
                    textDirection: TextDirection.rtl,
                  ),
                  const Divider(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
