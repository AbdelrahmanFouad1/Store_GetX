import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/features/splash_screen/view/widgets/splash_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashWidget(),
    );
  }
}
