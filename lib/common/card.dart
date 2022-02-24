import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;
  final Border borderstyle;
  final Color boxShadowColor;

  const AppCard(
      {Key? key,
      required this.child,
      required this.borderstyle,
      required this.boxShadowColor})
      : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(20),
            child: widget.child,
            decoration: BoxDecoration(
                color: Colors.white,
                border: widget.borderstyle ??
                    Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                      color: widget.boxShadowColor ?? Colors.black,
                      offset: Offset(
                        10,
                        10,
                      ))
                ]),
          ),
        )
      ],
    );
  }
}
