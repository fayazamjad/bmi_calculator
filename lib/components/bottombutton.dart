import 'package:flutter/material.dart';

import '../constants.dart';

class ButtomButon extends StatelessWidget {
  const ButtomButon({Key? key, required this.ontap, required this.buttontitle})
      : super(key: key);

  final String buttontitle;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: bottomcolours,
        child: Center(
          child: Text(
            buttontitle.toString(),
            style: largebuttontextstyle,
          ),
        ),
        margin: const EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: bottomcontainerHeight,
      ),
    );
  }
}
