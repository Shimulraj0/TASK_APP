import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../login_page/controllers/login_page_controller.dart';
import '../controllers/sun_up_page_controller.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/CoustomButton/coustombtn.dart';
import '../../../global_widget/From/custom_from.dart';
import '../../../global_widget/coustomLoginBanar/coustomLoginB.dart';
import '../../../global_widget/coustomloginTexr/costomlogintext.dart';
import '../../../global_widget/errotext/errotext.dart';


class SunUpPageView extends GetView<SunUpPageController> {
  const SunUpPageView({super.key});
  @override
  Widget build(BuildContext context) {
    LoginPageController mainController = Get.find<LoginPageController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CoustomloginbBanar
            Coustomloginb(),
            // CustomFrom
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Costomlogintext(title: StaticString.cAccount),
                  Form(
                    // key: mainController.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFrom(
                          loginTitle: StaticString.name,
                          loginHent: StaticString.nameHent,
                          isPassword: false,
                          controller: mainController.emailC,
                          horizontalpd: 15,
                          verticalpd: 5,
                          validator: (value) =>
                              mainController.validator(value, true, false),
                          mainController: mainController,
                        ),
                        SizedBox(height: 15),
                        CustomFrom(
                          loginTitle: StaticString.email,
                          loginHent: StaticString.emailHeint,
                          isPassword: false,
                          controller: mainController.emailC,
                          horizontalpd: 15,
                          verticalpd: 5,
                          validator: (value) =>
                              mainController.validator(value, true, false),
                          mainController: mainController,
                        ),
                        ErroText.erroWarning(mainController.emailError),
                        SizedBox(height: 15),
                        CustomFrom(
                          loginTitle: StaticString.password,
                          loginHent: StaticString.passwordHeint,
                          isPassword: true,
                          controller: mainController.passC,
                          horizontalpd: 15,
                          verticalpd: 5,
                          validator: (value) =>
                              mainController.validator(value, false, false),
                          mainController: mainController,
                        ),
                        ErroText.erroWarning(mainController.passError),
                        SizedBox(height: 15),
                        CustomFrom(
                          loginTitle: StaticString.confirmPass,
                          loginHent: StaticString.passwordHeint,
                          isPassword: true,
                          controller: mainController.passC,
                          horizontalpd: 15,
                          verticalpd: 5,
                          validator: (value) =>
                              mainController.validator(value, false, false),
                          mainController: mainController,
                        ),
                        ErroText.erroWarning(mainController.passError),

                        SizedBox(height: 5),
                        CoustomBtn(
                          onTap: () {
                            Get.toNamed(Routes.HOME);
                          },
                          btnTitle: StaticString.cAccount,
                          arro: false,
                        ),

                        // btn
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(StaticString.already),
                              SizedBox(width: 5),
                              TextButton(
                                onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                                child: Text(
                                  StaticString.logIn,
                                  style: StaticStyle.style(
                                    14,
                                    StaticColors.brandColor,
                                    FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
