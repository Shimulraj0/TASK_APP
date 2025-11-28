import 'package:flutter/material.dart';
import '../../../data/utils/static_colors/static_colors.dart';
class CoustomAppbar extends StatelessWidget implements PreferredSizeWidget {
   CoustomAppbar({super.key,  this.isArro=true});
   // final controller = Get.find<WelcomePageController>();
   final bool isArro ;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isArro? InkWell(
          // onTap: () =>controller.pageController.previousPage(duration:Duration(seconds: 1) ,curve: Curves.easeInOut),
          child:  Icon(Icons.arrow_back, size: 30)):null,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Center(
            child: GestureDetector(
              // onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
              child: Text(
               "",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(StaticColors.brandColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
