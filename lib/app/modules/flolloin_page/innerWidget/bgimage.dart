import 'package:flutter/material.dart';

import '../../../data/utils/static_img/static_img.dart';

class Bgimage extends StatelessWidget {
  const Bgimage({super.key});

  @override
  Widget build(BuildContext context) {
    return     Positioned(
      bottom: 0,
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(StaticImg.photo),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
