import 'package:flutter/material.dart';
import 'package:loginpagedart/constants.dart';

class TextFildContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  const TextFildContainer({
    Key? key,
    required this.child,
    this.color = kPrimaryColorLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
