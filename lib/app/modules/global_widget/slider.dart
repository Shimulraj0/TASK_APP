import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data/utils/static_colors/static_colors.dart';
import '../../data/utils/static_img/static_img.dart';
import '../aut/login_page/controllers/login_page_controller.dart';


class MySlider extends StatelessWidget {
  MySlider({super.key,});
  final LoginPageController controller = Get.find<LoginPageController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Obx(
          () => AnimatedSmoothIndicator(
            activeIndex: controller.currentindex.value,
            count:2,
            effect: const WormEffect(
              dotHeight: 1,
              spacing: 1,
              dotWidth: 100,
              activeDotColor: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
