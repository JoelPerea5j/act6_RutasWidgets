import 'package:flutter/material.dart';

class aspectratio extends StatelessWidget {
  const aspectratio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      width: double.infinity,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 16 / 7,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("¡Regresar!"),
            ),
          ),
        ],
      ),
    );
  }
}
