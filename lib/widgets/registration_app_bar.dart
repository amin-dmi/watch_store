import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/strings.dart';

class RegistetonAppBar extends StatelessWidget  implements PreferredSizeWidget{
  const RegistetonAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * 0.1),
      child: Container(
        child: Row(
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                )),
            Text(
              AppStrings.register,
              style: AppTextStyle.title,
            )
          ],
        ),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height*0.1);
}
