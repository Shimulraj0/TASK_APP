import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import 'package:taskapp/app/data/utils/static_img/static_img.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import 'package:taskapp/app/data/utils/static_style/staticstyle.dart';
import '../../global_widget/CoustomButton/coustombtn.dart';

class QsubmietPageView extends StatelessWidget {
  const QsubmietPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    InkWell(child: SvgPicture.asset(StaticImg.larrof),onTap: () => Get.back(),),
                    SizedBox(width: 8),
                    Text(StaticString.back),
                  ],
                ),
              ),

              Text(
                StaticString.wDone,
                style: StaticStyle.style(
                  18,
                  StaticColors.black,
                  FontWeight.w500,
                ),
              ),
              SizedBox(height: 28),
              Container(
                decoration: BoxDecoration(
                  color: Color(StaticColors.whites),
                  borderRadius: BorderRadius.circular(10),
                  border: BoxBorder.all(color: Colors.blue.shade200, width: 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  StaticString.vocabulary,
                  style: StaticStyle.style(
                    14,
                    StaticColors.brandColor,
                    FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 28),
              Container(
                decoration: BoxDecoration(
                  color: Color(StaticColors.whites),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    StaticString.q1,
                    style: StaticStyle.style(
                      18,
                      StaticColors.black,
                      FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              Card(
                color: Colors.grey.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Color(StaticColors.whiteColor),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        child: ListTile(
                          leading: Text(
                            StaticString.qOp3,
                            style: StaticStyle.style(
                              16,
                              StaticColors.black,
                              FontWeight.w400,
                            ),
                          ),
                          trailing: Text(
                            StaticString.qOpL3,
                            style: StaticStyle.style(
                              18,
                              StaticColors.grey,
                              FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Text(
                        StaticString.explanation,
                        style: StaticStyle.style(
                          16,
                          StaticColors.black,
                          FontWeight.w500,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            StaticString.explanationH,
                            style: StaticStyle.style(
                              14,
                              StaticColors.grey,
                              FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SvgPicture.asset(StaticImg.dot),
                              Expanded(
                                child: Text(
                                  StaticString.explanation1,
                                  style: StaticStyle.style(
                                    14,
                                    StaticColors.grey,
                                    FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SvgPicture.asset(StaticImg.dot),
                              Expanded(
                                child: Text(
                                  StaticString.explanation2,
                                  style: StaticStyle.style(
                                    14,
                                    StaticColors.grey,
                                    FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              CoustomBtn(
                onTap: () {},
                btnTitle: StaticString.continueT,
                arro: false,
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
