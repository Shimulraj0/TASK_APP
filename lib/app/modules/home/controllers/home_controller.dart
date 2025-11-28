import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

// Bottom nav current index
  var bottomIndex = 0.obs;

  // TabBar index
  var tabIndex = 0.obs;

  void changeBottomIndex(int index) {
    bottomIndex.value = index;
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
