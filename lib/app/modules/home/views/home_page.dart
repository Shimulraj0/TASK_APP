import 'package:flutter/material.dart';
import 'package:taskapp/app/data/utils/static_string/static_string.dart';
import '../../global_widget/card_page.dart';
import '../innerwiged/home_imge_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardPage(),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: StaticString.homeimgeView.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10),
              child: HomeImgeView(
                title: StaticString.homeimgeView[index]['title'],
                img: StaticString.homeimgeView[index]['img'],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
