import 'package:flutter/material.dart';
import 'package:mybutton_lib/src/custom_button.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          color: Colors.green,
          label: 'Klik Saya',
          borderRadius: BorderRadius.circular(8),
          onPressed: () {
            print('Tombol ditekan!');
          },
        ),
      ),
    );
  }
}
