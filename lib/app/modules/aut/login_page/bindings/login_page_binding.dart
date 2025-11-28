import 'package:get/get.dart';

import '../../../General_controller/controllers/general_controller_controller.dart';
import '../controllers/login_page_controller.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    ); Get.lazyPut<GeneralControllerController>(
      () => GeneralControllerController(),
    );
  }
}
