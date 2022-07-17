import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_getx/core/di/injection.dart';
import 'package:store_getx/core/network/local/cache_helper.dart';
import 'package:store_getx/core/util/localization/local.dart';
import 'package:store_getx/core/util/localization/local_controller.dart';
import 'package:store_getx/core/util/resources/routes_manager.dart';
import 'package:store_getx/core/di/injection.dart' as di;
import 'package:store_getx/core/util/resources/theme_manager.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  late Locale initialLang ;
  await sl<CacheHelper>().get('lang').then((value) {
      if (value == null) {
        initialLang =  Get.deviceLocale!;

      }else{
        initialLang =  Locale(value);
      }
    });
  runApp( MyApp(
    initialLang: initialLang,
  ));
}


class MyApp extends StatelessWidget {
  final Locale initialLang ;
  const MyApp({Key? key, required this.initialLang}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(MyLocalController());
    return GetMaterialApp(
      title: 'Store GetX',
      debugShowCheckedModeBanner: false,
      locale: initialLang,
      theme: ThemeManager.customLightTheme,
      translations: MyLocal(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
