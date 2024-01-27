import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  MyBox({@required this.colour, this.boxChild});

  final Color colour;
  final Widget boxChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: boxChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}