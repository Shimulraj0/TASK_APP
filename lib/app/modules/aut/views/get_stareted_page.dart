import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';

import '../../../routes/app_pages.dart';
import '../../global_widget/CoustomButton/coustombtn.dart';
import '../../global_widget/From/custom_from.dart';
import '../../global_widget/coustom_profile_fild/coustom_profile_fild.dart';
import '../login_page/innerwiged/customform_gets.dart';

class GetStaretedPage extends GetView {
  const GetStaretedPage({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController cScholl = TextEditingController();
    TextEditingController subject = TextEditingController();
    return Scaffold(
      body: Container(
        height:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(StaticColors.main),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StaticString.courseHed,
                style: StaticStyle.style(20, StaticColors.black, FontWeight.w500),
              ),
              Text(
                StaticString.courseSubHed,
                style: StaticStyle.style(20, StaticColors.black, FontWeight.w500),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: StaticString.getS.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomFrom(
                    loginTitle: StaticString.getS[index]['title'],
                    isPassword: false,
                    controller: cScholl,
                    horizontalpd: 20,
                    verticalpd: 2,
                    loginHent: StaticString.getS[index]['sibtitle'],
                  ),
                ),
              ),
              // CustomformGetsCall
              CustomformGets(
                title: StaticString.grade,
                stitle: StaticString.primary1,
              ),  CustomformGets(
                title: StaticString.howA,
                stitle: StaticString.friends,isgredform: true,
              ),
          SizedBox(height: 150,),
              CoustomBtn(
                onTap: () {

                  Get.toNamed(Routes.HOME);

                },
                btnTitle: StaticString.gStarted,
                arro: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
