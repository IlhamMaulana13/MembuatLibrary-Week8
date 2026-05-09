import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;
  //final BroderRadius borderRadiusTanger
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
    //required this.borderRadiusTanger
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.brown,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
