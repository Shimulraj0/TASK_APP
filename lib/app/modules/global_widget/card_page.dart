import 'package:flutter/material.dart';
import 'package:taskapp/app/data/utils/static_colors/static_colors.dart';
import '../../data/utils/static_string/static_string.dart';
import 'card_body.dart';

class CardPage extends StatelessWidget {
  CardPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(StaticString.homrcatagorylist.length, (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        print(index);
                      },
                      child: CardBodyFigma(
                        cateName: StaticString.homrcatagorylist[index],
                         cuindex: index,

                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
