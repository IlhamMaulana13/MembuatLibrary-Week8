import 'package:flutter/material.dart';
import 'package:mybutton_lib/mybutton_lib.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          color: Colors.green,
          label: "Klik Saya",
          onPressed: () {
            print("Tombol ditekan!");
          },
        ),
      ),
    );
  }
}
