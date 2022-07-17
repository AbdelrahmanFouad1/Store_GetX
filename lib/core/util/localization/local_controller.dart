import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:store_getx/core/di/injection.dart';
import 'package:store_getx/core/network/local/cache_helper.dart';

class MyLocalController extends GetxController{

  void changeLanguage(String code) {
    Locale locale = Locale(code);
    sl<CacheHelper>().put('lang', code);
    Get.updateLocale(locale);
  }
}