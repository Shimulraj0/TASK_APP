import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/utils/static_string/static_string.dart';
import '../../global_widget/From/custom_from.dart';
import '../../global_widget/auto_segation/auto_segation.dart';
import '../../global_widget/navbar/navbar.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(
            onTap: () {
              Get.back();
            },
          ),
          AutoSegation(),
        ],
      ),
    );
  }
}
