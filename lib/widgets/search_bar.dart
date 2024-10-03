
import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBtn extends StatelessWidget {
  const SearchBtn({
    super.key,required this.on_Tap
  });

  final VoidCallback on_Tap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.medium),
      child: GestureDetector(
        onTap: on_Tap,
        child: Container(
          height: 52.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.searchBara,
            borderRadius: BorderRadius.circular(60.0),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.shadow,
                  offset: Offset(0, 3),
                  blurRadius: 4.0),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(Assets.svg.search),
              Text(
                AppStrings.searchProduct,
                style: AppTextStyle.hint,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Assets.png.mainLogo.path),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
