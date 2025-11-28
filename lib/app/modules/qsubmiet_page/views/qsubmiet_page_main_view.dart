import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_img/static_img.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';

import '../../../routes/app_pages.dart';
import '../../global_widget/CoustomAppbar/coustomappbar.dart';
import '../../global_widget/CoustomButton/coustombtn.dart';

class QsubmietPageMainView extends StatelessWidget {
  const QsubmietPageMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  InkWell(child: SvgPicture.asset(StaticImg.larrof),onTap: () => Get.back(),),
                  SizedBox(width: 8),
                  Text(StaticString.back),
                ],
              ),
            ),
            Text(
              StaticString.vHeadPage2,
              style: StaticStyle.style(18, StaticColors.black, FontWeight.w500),
            ),
            SizedBox(height: 27,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(StaticColors.whites),
                    borderRadius: BorderRadius.circular(10),
                    border: BoxBorder.all(
                      color: Colors.blue.shade200,
                      width: 1,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(StaticString.vocabulary,style: StaticStyle.style(14, StaticColors.brandColor, FontWeight.w500),),
                ),
                Row(
                  children: [
                    SvgPicture.asset(StaticImg.watch),
                    SizedBox(width: 5),
                    Text(StaticString.time),
                  ],
                ),
              ],
            ),
            SizedBox(height: 28,),
            Container(
              decoration: BoxDecoration(
                color: Color(StaticColors.whites),
                borderRadius: BorderRadius.circular(10),

              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(StaticString.q1,style: StaticStyle.style(18, StaticColors.black, FontWeight.w500)),
              ),
            ),
            SizedBox(height: 28,),
           Expanded(
             child: ListView.builder(
               itemCount: StaticString.quPageList.length,
               itemBuilder: (context, index) =>  Card(
               color: Color(StaticColors.whiteColor),
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                 child: ListTile(
                   leading: Text(StaticString.quPageList[index]["title"],style: StaticStyle.style(16, StaticColors.black, FontWeight.w400)),
                   trailing:Text(StaticString.quPageList[index]["op"],style: StaticStyle.style(18, StaticColors.grey, FontWeight.w500)) ,
                 ),
               ),
             ),),
           ),
            CoustomBtn(onTap: () => Get.toNamed(Routes.QSUBMIET_PAGE),btnTitle: StaticString.next,arro:false ,),
            SizedBox(height: 150,)

          ],
        ),
      ),
    );
  }
}
