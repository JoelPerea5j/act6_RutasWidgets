import 'dart:ui';
import 'package:flutter/material.dart';

class backdrop extends StatelessWidget {
  const backdrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackDropFilter"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: <Widget>[
          Text(
            "0" * 10000,
            style: const TextStyle(color: Colors.green),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.black.withOpacity(0.2),
                  alignment: Alignment.center,
                  child: const Text(
                    'Efecto blur',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
