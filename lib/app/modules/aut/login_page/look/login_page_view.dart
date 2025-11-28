import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/CoustomButton/coustombtn.dart';
import '../../../global_widget/From/custom_from.dart';
import '../../../global_widget/coustomLoginBanar/coustomLoginB.dart';
import '../../../global_widget/coustomloginTexr/costomlogintext.dart';
import '../../../global_widget/errotext/errotext.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});
  @override
  Widget build(BuildContext context) {
    LoginPageController mainController = Get.find<LoginPageController>();
    // TextEditingController email = TextEditingController();
    // TextEditingController pass = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // cousTomLoginBanar----------
            Coustomloginb(),

            // coustommfrommcall
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Costomlogintext(title: StaticString.logIn,),
                  Form(
                    // key: mainController.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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

                        ListTile(
                          trailing: TextButton(
                            onPressed: () {},
                            child: Text(
                              StaticString.fPass,
                              style: StaticStyle.style(
                                14,
                                StaticColors.brandColor,
                                FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 5),
                        CoustomBtn(
                          onTap: () {
                            Get.toNamed(Routes.GET_STUD);

                          },
                          btnTitle: StaticString.logIn,
                          arro: false,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(StaticImg.google),
                              SizedBox(width: 15),
                              Text(StaticString.loginsub),
                            ],
                          ),
                        ),


                        // btn
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(StaticString.createNew),
                            SizedBox(width: 15),
                            TextButton(
                              onPressed: () => Get.toNamed(Routes.SUN_UP_PAGE),
                              child: Text(
                                StaticString.cAccount,
                                style: StaticStyle.style(
                                  14,
                                  StaticColors.brandColor,
                                  FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
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
