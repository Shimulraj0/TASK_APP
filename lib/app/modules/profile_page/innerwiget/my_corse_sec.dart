import 'package:flutter/material.dart';

import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../global_widget/CoustomButton/coustombtn.dart';

class MyCorseSec extends StatelessWidget {
  const MyCorseSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(StaticString.cousTi),
                Text(StaticString.couseUploTime),
              ],
            ),
            SizedBox(height: 10),
            Text(StaticString.cousSubTi),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 15,
                    child: Image(image: AssetImage(StaticImg.gphoto)),
                  ),
                  SizedBox(width: 10),
                  Text(StaticString.couseOnerName),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: CoustomBtn(
                    btnTitle: StaticString.getBac,
                    onTap: () {},
                    arro: false,
                    iscolor: false,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CoustomBtn(
                    btnTitle: StaticString.courseDet,
                    onTap: () {},
                    arro: false,
                    isTranprant: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
