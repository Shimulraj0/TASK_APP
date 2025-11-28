import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlolloinPageController extends GetxController {
  //TODO: Implement FlolloinPageController

  var pageIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }
  void nextPage(int totalPages) {
    if (pageIndex.value < totalPages - 1) {
      pageIndex.value++;
      pageController.nextPage(
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    }else{
      // Get.toNamed(Routes.loginPage);
    }
  }
}
