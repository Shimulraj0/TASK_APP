import 'package:get/get.dart';

import '../../General_controller/controllers/general_controller_controller.dart';
import '../../flolloin_page/controllers/flolloin_page_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<GeneralControllerController>(
          () => GeneralControllerController(),
    ); Get.lazyPut<FlolloinPageController>(
          () => FlolloinPageController(),
    );
  }
}
