import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card.dart';

class Logo extends StatelessWidget {
  double? fontHeight = 5;

  Logo({Key? key, this.fontHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'C',
        style: TextStyle(fontFamily: 'Hubballi',fontSize: 100,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 154, 122, 243)),
      ),
    );
  } 
}
