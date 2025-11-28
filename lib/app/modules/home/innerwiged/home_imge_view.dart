import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class HomeImgeView extends StatelessWidget {
  const HomeImgeView({super.key, required this.title, required this.img});
  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          Positioned(
            left: 20,
            bottom: 50,
            child: Container(
              child: Text(
                title,
                style: StaticStyle.style(
                  16,
                  StaticColors.whiteColor,
                  FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 10,
            child: Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(StaticImg.photo),maxRadius: 13,),
                SizedBox(width: 6,),
                Text(
                  StaticString.subTi1,
                  style: StaticStyle.style(
                    16,
                    StaticColors.whiteColor,
                    FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
