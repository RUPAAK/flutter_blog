import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card.dart';

class Logo extends StatelessWidget {
  final AnimationController? animationController;

  double? fontHeight = 5;

  Logo({Key? key, this.fontHeight, this.animationController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (animationController == null) {
      return Container(
        child: Text(
          'C',
          style: TextStyle(
              fontFamily: 'Hubballi',
              fontSize: fontHeight,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 235, 76, 208)),
        ),
      );
    } else {
      return SlideTransition(
        position: Tween(begin: Offset(-1, 0), end: Offset.zero)
            .animate(animationController!),
        child: FadeTransition(
          opacity: animationController!,
          child: Container(
            child: Text(
              'C',
              style: TextStyle(
                  fontFamily: 'Hubballi',
                  fontSize: fontHeight,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 235, 76, 208)),
            ),
          ),
        ),
      );
    }
  }
}
