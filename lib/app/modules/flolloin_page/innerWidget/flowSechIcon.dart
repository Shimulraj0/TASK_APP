import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/utils/static_img/static_img.dart';

class Flowsechicon extends StatelessWidget {
  const Flowsechicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 50,
      height: 50,
      top: 10,
      right: 10,
      child: Card(
        color: Colors.transparent,
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(StaticImg.search,colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),
          ),
        ),
      ),
    );
  }
}
