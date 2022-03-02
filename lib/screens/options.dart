import 'package:blog_app/common/logo.dart';
import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  List<String> options = [
    'UI Design',
    "UX Design",
    "Blog Design",
    "Visual Design",
    "Motion",
    "Graphic",
    "Typography",
    "3d",
    "Icon",
    "News",
    "Business",
    "Sports",
    "Fashion",
    "Technology",
    "Health",
    "Shoping",
    "Music",
    "Video",
    "Recipe",
    "Fun",
    "Entertainment",
    "Creative"
  ];

  OptionScreen({Key? key}) : super(key: key);

  List<Widget> getList() {
    List<Widget> childs = [];
    for (var i = 0; i < options.length; i++) {
      childs.add(Container(
        margin: EdgeInsets.only(right: 8.0, bottom: 4.0),
        child: new Chip(
            backgroundColor: Color.fromARGB(255, 215, 240, 217),
            padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
            shape: StadiumBorder(side: BorderSide(width: 0.1)),
            label: Text(
              options[i],
              style: TextStyle(fontSize: 15.0),
            )),
      ));
    }
    return childs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(
                    fontHeight: 60,
                  ),
                  Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                "Pick Topic to Start Reading.....",
                style: TextStyle(
                    fontSize: 30.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Wrap(
                children: getList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color.fromARGB(255, 213, 17, 3),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
