import 'package:flutter/material.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/widgets/asset_svg.dart';


class MyThemeIcon extends StatelessWidget {
  final String path;
  final Color lightColor;
  final Color darkColor;

  const MyThemeIcon({
    Key? key,
    this.lightColor = ColorManager.primaryColor,
    this.darkColor = ColorManager.regularGrey,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MySvg(
      // color: AppCubit.get(context).isDark ? HexColor(darkColor) : HexColor(lightColor),
      imagePath: path,
    );
  }
}