import 'package:flutter/material.dart';

import '../../../responsive.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Esse size nos proporcional o tamanho total da tela
    return SingleChildScrollView(
      child: SafeArea(
        //Esse Responsive é o Responsive.dart que criamos
        child: Responsive(
            mobile: MobileBackground(size: size, child: child),
            desktop: DesktopWelcomeScreen(size: size, child: child),
            tablet: TabletWelcomeScreen(size: size, child: child)),
      ),
    );
  }
}

class MobileBackground extends StatelessWidget {
  const MobileBackground({Key? key, required this.size, required this.child})
      : super(key: key);
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class DesktopWelcomeScreen extends StatelessWidget {
  const DesktopWelcomeScreen(
      {Key? key, required this.size, required this.child})
      : super(key: key);
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.1,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.1,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class TabletWelcomeScreen extends StatelessWidget {
  const TabletWelcomeScreen({Key? key, required this.size, required this.child})
      : super(key: key);
  final Widget child;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.1,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
