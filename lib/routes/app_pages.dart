import 'package:get/get.dart';

import '../bindings/bindings.dart';
import '../views/home_view.dart';
import '../views/unknown_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const UNOTKNOWN = Routes.UNKNOWN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: Binding(),
    ),
    GetPage(
      name: _Paths.UNKNOWN,
      page: () => UnknownPage(),
    ),
  ];
}
