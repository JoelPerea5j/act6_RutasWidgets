import 'package:flutter/material.dart';

class Builders extends StatelessWidget {
  const Builders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Builder Example"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: MyWidget(),
    );
  }
}

Widget MyWidget() => Builder(
      builder: (BuildContext context) {
        return const Center(
          child: Text(
            "Text with Theme",
            style: TextStyle(
              fontSize: 40, // ¡Texto grandote!
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
