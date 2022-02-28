import 'package:blog_app/common/logo.dart';
import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Logo(), Text("Login")],
        )
      ],
    );
  }
}
