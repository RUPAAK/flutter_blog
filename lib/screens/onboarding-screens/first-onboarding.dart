import 'package:blog_app/common/logo.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox.expand(
          child: Center(
        child: Column(
          children: [
            Container(
              // color: Colors.white,
              child: Logo(
                fontHeight: 80,
              ),
            ),
            Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30.0,),
                      child: Text('Powered by Us', style: TextStyle(color: Color.fromARGB(95, 14, 13, 13)),))),
            ),
          ],
        ),
      )),
    );
  }
}
