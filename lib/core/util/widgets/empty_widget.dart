import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_getx/core/util/resources/assets_manager.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/resources/constants_manager.dart';


class EmptyWidget extends StatelessWidget {
  final String text;
  final String svgImage;

  const EmptyWidget({
    Key? key,
    required this.text,
     this.svgImage = ImageAssetsManager.emptyBox,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgImage,
            height: 150.0,
            width: 150.0,
            color: ColorManager.darkGrey,
          ),
          space10Vertical(context),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: ColorManager.darkGrey,
                ),
          ),
        ],
      ),
    );
  }
}
