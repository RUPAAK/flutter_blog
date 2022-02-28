import 'package:blog_app/common/logo.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox.expand(
          child: Center(
        child: Container(
          // color: Colors.white,
          child: Logo(
            fontHeight: 80,
          ),
        ),
      )),
    );
  }
}
