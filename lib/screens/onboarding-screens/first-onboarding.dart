import 'package:blog_app/common/logo.dart';
import 'package:blog_app/screens/options.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    void _navigateToAnother() async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OptionScreen()));
    }

    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OptionScreen()),
          (route) => false);
    });

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
            // Expanded(
            //   child: Align(
            //       alignment: FractionalOffset.bottomCenter,
            //       child: Container(
            //           margin: EdgeInsets.only(
            //             bottom: 30.0,
            //           ),
            //           child: Text(
            //             'Powered by Us',
            //             style: TextStyle(color: Color.fromARGB(95, 14, 13, 13)),
            //           ))),
            // ),
          ],
        ),
      )),
    );
  }
}
