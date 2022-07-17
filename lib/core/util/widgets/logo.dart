import 'package:flutter/material.dart';
import 'package:store_getx/core/util/resources/assets_manager.dart';
import 'package:store_getx/core/util/resources/constants_manager.dart';


class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAssetsManager.logoPNG,
      width: responsiveValue(context, 140.0),
      height: responsiveValue(context, 120.0),
      // color: AppCubit
      //     .get(context)
      //     .isDark ? HexColor(regularGrey) : HexColor(mainColor),
    );
  }
}
