import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../views/home_view.dart';
import '../views/unknown_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;
  // ignore: constant_identifier_names
  static const NOTKNOWN = Routes.UNKNOWN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.UNKNOWN,
      page: () => UnknownPage(),
    ),
  ];
}
