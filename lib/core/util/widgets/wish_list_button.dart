import 'package:flutter/material.dart';
import 'package:store_getx/core/util/resources/assets_manager.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/resources/constants_manager.dart';
import 'package:store_getx/core/util/widgets/asset_svg.dart';


class WishListButton extends StatefulWidget {

  const WishListButton({Key? key}) : super(key: key);

  @override
  State<WishListButton> createState() => _WishListButtonState();
}

class _WishListButtonState extends State<WishListButton> {
  bool isWishList = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        icon: CircleAvatar(
          radius: 20.0,
          // backgroundColor: AppCubit.get(context).isDark
          //     ? HexColor(secondBackground)
          //     : Colors.grey[300],
          child: MySvg(
            color: ColorManager.primaryColor,
            imagePath: isWishList? ImageAssetsManager.heartSolid : ImageAssetsManager.heart,
            size: responsiveValue(context, 14.0),
          ),
        ),
        padding: EdgeInsets.zero,
        onPressed: () {
          setState(() {
            isWishList = !isWishList;
          });
        },
      ),
    );
  }
}
