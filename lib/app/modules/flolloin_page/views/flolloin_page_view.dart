import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';
import '../../../routes/app_pages.dart';
import '../../global_widget/CoustomButton/coustomminibtn.dart';
import '../controllers/flolloin_page_controller.dart';
import '../innerWidget/bgimage.dart';
import '../innerWidget/flowSechIcon.dart';
import '../innerWidget/flowing_subtext.dart';
import '../innerWidget/red_more.dart';

class FlolloinPageView extends GetView<FlolloinPageController> {
  const FlolloinPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => Get.back(),
        child: SizedBox(
          // height: 400,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              // Bgimage
              Bgimage(),
              // Flowsechicon
              Flowsechicon(),
              Positioned(
                left: 20,
                bottom: 150,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(StaticImg.photo),
                      maxRadius: 13,
                    ),
                    SizedBox(width: 6),
                    Text(
                      StaticString.subTi1,
                      style: StaticStyle.style(
                        16,
                        StaticColors.whiteColor,
                        FontWeight.w600,
                      ),
                    ), SizedBox(width: 6),
                    Card(
                      color: Colors.transparent,
                      shadowColor: Colors.white,
                      child: CustomMiniBtn(
                        btnTitle: StaticString.followed,
                        onTap: () {
                          Get.toNamed(Routes.HOME);
                        },
                        bdColor: StaticColors.black,istransparent: true,isIcon: false,isborder: true,
                        pdH: 12,pdV: 8,
                      ),
                    ),
                    SizedBox(width: 6),
                    Card(
                      color: Colors.transparent,
                      shadowColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: CustomMiniBtn(
                          btnTitle: StaticString.followed,
                          onTap: () {
                            Get.toNamed(Routes.HOME);
                          },
                          bdColor: StaticColors.black,istransparent: true,isIcon: true,btnIcon: StaticImg.like,
                          pdH: 10,pdV: 5,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            FlowingSubtext(),
              RedMore(),

            ],
          ),
        ),
      ),
    );
  }
}
