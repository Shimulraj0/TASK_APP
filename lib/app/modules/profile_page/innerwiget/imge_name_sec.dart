import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class ImgeNameSec extends StatelessWidget {
  const ImgeNameSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(StaticImg.gphoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        //  NAME ----------
        Center(
          child: Text(
            StaticString.nameF,
            style: StaticStyle.style(20, StaticColors.black, FontWeight.w600),
          ),
        ),
        Center(
          child: Text(
            StaticString.fSuName,
            style: StaticStyle.style(13, StaticColors.grey, FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
