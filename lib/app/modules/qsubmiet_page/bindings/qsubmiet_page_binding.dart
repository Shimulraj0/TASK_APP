import 'package:get/get.dart';

import '../controllers/qsubmiet_page_controller.dart';

class QsubmietPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QsubmietPageController>(
      () => QsubmietPageController(),
    );
  }
}
