import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../General_controller/controllers/general_controller_controller.dart';
import '../../../global_widget/From/custom_from.dart';

class CustomformGets extends StatelessWidget {
  CustomformGets({
    super.key,
    required this.title,
    required this.stitle,
    this.isgredform = false,
  });
  final String title;
  final String stitle;
  final bool isgredform;

  final GeneralControllerController controller =
  Get.find<GeneralControllerController>();
  final TextEditingController cSchool = TextEditingController();

  @override
  Widget build(BuildContext context) {
    cSchool.text = controller.selectedValue.value;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(StaticColors.main),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFrom(
            loginTitle: title,
            loginHent: stitle,
            isPassword: false,
            controller: cSchool,
            horizontalpd: 20,
            verticalpd: 2,
            asdarro: true,
            onTap: () =>isgredform? controller.toggleMore1():controller.toggleMore(),
          ),
          const SizedBox(height: 10),

          Obx(() {
             if (isgredform?!controller.showMore1.value:!controller.showMore.value) return SizedBox.shrink();

            final listItems =
            isgredform ? StaticString.aboutlist : StaticString.gradelist;

            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.selectItem(listItems[index]);
                    isgredform? controller.toggleMore1():controller.toggleMore();
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        listItems[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
