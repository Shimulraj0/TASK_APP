import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';

import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../global_widget/CoustomButton/coustombtn.dart';
import '../../global_widget/CoustomButton/coustomminibtn.dart';
import '../../global_widget/navbar/navbar.dart';
import '../controllers/profile_page_controller.dart';
import '../innerwiget/imge_name_sec.dart';
import '../innerwiget/my_corse_sec.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -------- TOPbar --
          Navbar(rarro: true,onTap: () {

          },),
          // - PROFILE IMAGE -
          SizedBox(height: 20),
          ImgeNameSec(),
          Card(
            color: Colors.transparent,
            shadowColor: Color(StaticColors.whites),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) {
                  return Column(
                    children: [
                      Text(
                        StaticString.profilePro[index]['count'],
                        style: StaticStyle.style(
                          15,
                          StaticColors.black,
                          FontWeight.w600,
                        ),
                      ),
                      Text(
                        StaticString.profilePro[index]['title'],
                        style: StaticStyle.style(
                          12,
                          StaticColors.grey,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              StaticString.myCou,
              style: StaticStyle.style(18, StaticColors.black, FontWeight.w500),
            ),
          ),
         Expanded(
           child: ListView.builder(
             itemCount: 2,
             itemBuilder: (context, index) => MyCorseSec(),),
         )
        ],
      ),
    );
  }
}
