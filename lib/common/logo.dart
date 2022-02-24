import 'package:flutter/material.dart';

import 'card.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: AppCard(
                  borderstyle: Border.all(color: Colors.black, width: 2),
                  boxShadowColor: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'C',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
