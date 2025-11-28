import 'package:flutter/material.dart';

import '../../../data/utils/static_string/static_string.dart';
import '../From/custom_from.dart';

class AutoSegation extends StatelessWidget {
  AutoSegation({super.key});
  TextEditingController secbox = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Autocomplete<String>(
        optionsBuilder: (TextEditingValue value) {
          if (value.text.isEmpty) {
            return const Iterable<String>.empty();
          }

          return StaticString.items.where(
                (option) => option
                .toLowerCase()
                .contains(value.text.toLowerCase()),
          );
        },

        onSelected: (String selection) {
          secbox.text = selection;
        },
        optionsViewBuilder: (context, onSelected, options) {
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                constraints: BoxConstraints(
                  maxHeight: 200,
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    final option = options.elementAt(index);

                    return Card(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text(option),
                        onTap: () {
                          onSelected(option);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },

        fieldViewBuilder:
            (context, controller, focusNode, onEditingComplete) {
          secbox = controller;

          return Padding(
            padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: CustomFrom(
              loginTitle: StaticString.search,
              isPassword: false,
              controller: secbox,
              horizontalpd: 20,
              verticalpd: 0,
              asdarro: false,
              loginHent: StaticString.searchfHen,
              issecarro: true,
              focusNode: focusNode,
              onEditingComplete: onEditingComplete,
            ),
          );
        },
      ),
      ],
    );
  }
}
