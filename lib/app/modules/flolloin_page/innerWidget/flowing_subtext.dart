import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class FlowingSubtext extends StatelessWidget {
  const FlowingSubtext({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      left: 20,
      bottom: 64,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StaticString.vHead,
            style: StaticStyle.style(
              20,
              StaticColors.whiteColor,
              FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Text(
            StaticString.vSubHead,
            style: StaticStyle.style(
              16,
              StaticColors.whiteColor,
              FontWeight.w600,
            ),
          ),
          SizedBox(width: 6),
        ],
      ),
    );
  }
}
