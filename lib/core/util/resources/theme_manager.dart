import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_getx/core/util/resources/color_manager.dart';
import 'package:store_getx/core/util/resources/font_manager.dart';

class ThemeManager {
  static ThemeData customLightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: ColorManager.primaryColor,
    primarySwatch:MaterialColor(int.parse('0xfffcb955'), ColorManager.color),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: Platform.isIOS
          ? null
          : const SystemUiOverlayStyle(
        statusBarColor: ColorManager.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: ColorManager.whiteColor,
      elevation: 0.0,
      titleSpacing: 0.0,
      iconTheme: const IconThemeData(
        size: 20.0,
        color: Colors.black,
      ),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontFamily: FontConstants.fontFamilyEN,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.whiteColor,
      elevation: 50.0,
      selectedItemColor: ColorManager.primaryColor,
      unselectedItemColor: Colors.grey[400],
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        height: 1.5,
      ),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontSize: 20,
        fontFamily:  FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w700,
        color:ColorManager.secondaryColor,
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily:  FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w400,
        color: ColorManager.secondaryVariantColor,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontFamily: FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w700,
        color:ColorManager.secondaryVariantColor,
      ),
      subtitle1: TextStyle(
        fontSize: 12.0,
        fontFamily:  FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w700,
        color: ColorManager.secondaryVariantColor,
      ),
      subtitle2: TextStyle(
        fontSize: 12.0,
        fontFamily: FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w400,
        color: ColorManager.secondaryVariantColor,
      ),
      caption: TextStyle(
        fontSize: 11.0,
        fontFamily: FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w400,
        color: ColorManager.secondaryColor,
      ),
      button: TextStyle(
        fontSize: 16.0,
        fontFamily: FontConstants.fontFamilyEN,
        fontWeight: FontWeight.w700,
        color: ColorManager.whiteColor,
      ),
    ),
  );

  static ThemeData customDarkTheme = ThemeData(
    primarySwatch: Colors.red,
    appBarTheme: const AppBarTheme(color: Colors.red,),
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

}
