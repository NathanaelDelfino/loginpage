import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpagedart/constants.dart';

class SocialIcon extends StatelessWidget {
  final String socialIcon;
  final Function()? press;

  const SocialIcon({
    Key? key,
    required this.socialIcon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryColor),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          socialIcon,
          height: 15,
          width: 15,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
