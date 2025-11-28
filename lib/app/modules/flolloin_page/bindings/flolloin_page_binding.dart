import 'package:get/get.dart';

import '../controllers/flolloin_page_controller.dart';

class FlolloinPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlolloinPageController>(
      () => FlolloinPageController(),
    );
  }
}
