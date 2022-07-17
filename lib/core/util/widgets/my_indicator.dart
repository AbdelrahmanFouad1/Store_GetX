import 'package:flutter/material.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/widgets/my_cupertino_indicator.dart';


class MyIndicator extends StatelessWidget {
  const MyIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MyCupertinoActivityIndicator(
        activeColor: ColorManager.primaryColor,
      ),
    );
  }
}
