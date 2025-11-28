import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
import '../innerWidget/flowing_text.dart';
import '../innerWidget/red_more.dart';

class FlolloinMainPageView extends GetView<FlolloinPageController> {
  FlolloinMainPageView({super.key});
  final controller = Get.find<FlolloinPageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) => controller.pageIndex.value = index,
        itemCount: 2,

        itemBuilder: (context, index) {
        return SizedBox(
          // height: 400,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              // bgImage
              Bgimage(),
              // sschIcon
              Flowsechicon(),
              // FlowingText
              FlowingText(),
              // FlowingSubtext
              FlowingSubtext(),
              // RedMore
              RedMore(),
            ],
          ),
        );
      },)
    );
  }
}
