import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taskapp/app/data/utils/static_img/static_img.dart';
import '../../aut/views/get_stareted_page.dart';
import '../../aut/views/search_page.dart';
import '../../flolloin_page/views/flolloin_main_page_view.dart';
import '../../global_widget/tab_Bar.dart';
import '../../profile_page/views/profile_page_view.dart';
import '../../qsubmiet_page/views/qsubmiet_page_main_view.dart';
import '../controllers/home_controller.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find<HomeController>();
    final pages = [
      // TabBar Page
      TapBar(),
      FlolloinMainPageView(),
      QsubmietPageMainView(),
      // SearchPage(),
      GetStaretedPage(),
      ProfilePageView()
    ];
    return Obx(() => Scaffold(
      body: pages[controller.bottomIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.bottomIndex.value,
        onTap: (i) => controller.changeBottomIndex(i),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(StaticImg.home), label: "", ),
          BottomNavigationBarItem(icon: SvgPicture.asset(StaticImg.video), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset(StaticImg.quiz), label: ""),
          BottomNavigationBarItem(icon: SvgPicture.asset(StaticImg.course), label: ""),
          BottomNavigationBarItem(icon:SvgPicture.asset(StaticImg.profile), label: ""),
        ],
      ),
    ));
  }
}
