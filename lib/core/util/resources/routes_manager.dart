

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store_getx/features/login/view/pages/login_page.dart';
import 'package:store_getx/features/register/view/pages/register_page.dart';
import 'package:store_getx/features/splash_screen/view/page/splash_page.dart';

abstract class Routes {
  static const splash = _Paths.splashRoute;
  static const login = _Paths.loginRoute;
  static const register = _Paths.registerRoute;
}

abstract class _Paths {
  static const splashRoute = '/';
  static const loginRoute = '/login';
  static const registerRoute = '/register';
}

class AppPages {
  static const INITIAL = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splashRoute,
      page: () => const SplashPage(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.loginRoute,
      page: () => const LoginPage(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.registerRoute,
      page: () => const RegisterPage(),
      // binding: HomeBinding(),
    ),

  ];
}