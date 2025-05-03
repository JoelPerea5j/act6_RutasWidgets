import 'package:flutter/material.dart';

class BaselineExample extends StatelessWidget {
  const BaselineExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baseline Demo"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: const Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
