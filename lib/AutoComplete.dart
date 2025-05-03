import 'package:flutter/material.dart';

class AutoCompleteExample extends StatelessWidget {
  const AutoCompleteExample({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    "Apple",
    "Banana",
    "Melon",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autocomplete Demo"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == "") {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item.toLowerCase().contains(
                    textEditingValue.text.toLowerCase(),
                  );
            });
          },
          onSelected: (String item) {
            print("The $item was selected");
          },
        ),
      ),
    );
  }
}
