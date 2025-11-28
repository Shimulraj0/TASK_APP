import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class RedMore extends StatelessWidget {
  const RedMore({super.key});

  @override
  Widget build(BuildContext context) {
    return   Positioned(
        left: 250,
        bottom: 60,
        width: 100,
        child:TextButton(onPressed: () {
        }, child: Text(StaticString.readMore,style: StaticStyle.style(16, StaticColors.whiteColor, FontWeight.w400),))
    );
  }
}
