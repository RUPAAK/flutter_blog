import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  double? fontHeight = 5;

  Logo({Key? key, this.fontHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'C',
        style: TextStyle(color: Colors.red, fontSize: fontHeight, fontWeight: FontWeight.w500),
      ),
    );
  }
}
