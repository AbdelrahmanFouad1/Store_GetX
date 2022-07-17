import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/resources/routes_manager.dart';
import '../../../../core/util/resources/assets_manager.dart';
import '../../../../core/util/resources/constants_manager.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: ConstantsManger.splashDelay), _goNext);
  }

  _goNext() {
    // if(ConstantsManger.token.isNotEmpty) {
    //   sl<NavigatorManager>().navigateAndFinish(Routes.homeRoute);
    //   // sl<NavigatorManager>().navigateAndFinish(Routes.testRoute);
    // } else {
    //   sl<NavigatorManager>().navigateAndFinish(Routes.signInRoute);
    //   // sl<NavigatorManager>().navigateAndFinish(Routes.testRoute);
    // }
    Get.offAllNamed(Routes.login);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorManager.whiteColor,
      child: Align(
        alignment: AlignmentDirectional.center,
        child: Image.asset(
           ImageAssetsManager.logoPNG,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
