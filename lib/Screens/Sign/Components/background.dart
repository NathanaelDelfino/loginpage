import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/signup_top.png',
                height: size.height * 0.20,
              ),
            ),
            Positioned(
              bottom: -10,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                height: size.height * 0.15,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
