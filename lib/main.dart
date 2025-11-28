import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(StaticColors.whiteColor)
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
