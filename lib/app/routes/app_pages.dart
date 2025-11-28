import 'package:get/get.dart';
import 'package:taskapp/app/modules/aut/login_page/look/login_page_view.dart';
import '../modules/aut/login_page/bindings/login_page_binding.dart';

import '../modules/aut/sun_up_page/views/sun_up_page_view.dart';
import '../modules/aut/views/get_stareted_page.dart';
import '../modules/aut/views/search_page.dart';
import '../modules/flolloin_page/bindings/flolloin_page_binding.dart';
import '../modules/flolloin_page/views/flolloin_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/qsubmiet_page/bindings/qsubmiet_page_binding.dart';
import '../modules/qsubmiet_page/views/qsubmiet_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final INITIAL = Routes.LOGIN_PAGE;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.SUN_UP_PAGE,
      page: () => const SunUpPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.GET_STUD,
      page: () => const GetStaretedPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.FLOLLOIN_PAGE,
      page: () => const FlolloinPageView(),
      binding: FlolloinPageBinding(),
    ),
    GetPage(
      name: _Paths.QSUBMIET_PAGE,
      page: () => const QsubmietPageView(),
      binding: QsubmietPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_Page,
      page: () => SearchPage(),
      binding: ProfilePageBinding(),
    ),
  ];
}
