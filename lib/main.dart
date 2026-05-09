import 'package:flutter/material.dart';
import 'package:mybutton_lib/mybutton_lib.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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