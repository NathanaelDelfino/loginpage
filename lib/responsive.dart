import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget? tablet;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
    this.tablet,
  }) : super(key: key);

  static bool IsMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool IsTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1200;

  static bool IsDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width < 600) {
      return mobile;
    } else if (size.width >= 600 && size.width < 1200) {
      return tablet ?? desktop;
    } else {
      return desktop;
    }
  }
}
