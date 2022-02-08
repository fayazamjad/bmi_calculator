import 'package:bmi_calculater/constants.dart';
import 'package:flutter/material.dart';

class CustomIconContent extends StatelessWidget {
  const CustomIconContent({Key? key, required this.label, required this.icon})
      : super(key: key);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labeltextstyle,
        ),
      ],
    );
  }
}
