import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpagedart/Components/already_have_an_account_acheck.dart';
import 'package:loginpagedart/Components/rounded_button.dart';
import 'package:loginpagedart/Components/rounded_input_field.dart';
import 'package:loginpagedart/Components/rounded_password_field.dart';
import 'package:loginpagedart/Screens/Login/login_screen.dart';
import 'package:loginpagedart/Screens/Sign/Components/background.dart';
import 'package:loginpagedart/Screens/Sign/Components/social_icon.dart';

import '../../../constants.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('CADASTRAR', style: TextStyle(fontWeight: FontWeight.bold)),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Insira o seu email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
              text: 'Cadastrar',
              press: () => {},
              color: kPrimaryColor,
              textColor: kPrimaryColorLight),
          AlredyHaveAnAccountCheck(
            login: false,
            press: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }))
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                socialIcon: 'assets/icons/facebook.svg',
                press: () => {},
              ),
              SocialIcon(
                socialIcon: 'assets/icons/google-plus.svg',
                press: () => {},
              ),
              SocialIcon(
                socialIcon: 'assets/icons/twitter.svg',
                press: () => {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
