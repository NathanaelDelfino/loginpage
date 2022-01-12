import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpagedart/Components/rounded_button.dart';
import 'package:loginpagedart/Screens/Login/login_screen.dart';
import 'package:loginpagedart/Screens/Sign/sign_screen.dart';
import 'package:loginpagedart/Screens/Welcome/components/background.dart';
import 'package:loginpagedart/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Esse size nos proporcional o tamanho total da tela
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('BEM-VINDO', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset('assets/icons/chat.svg', height: size.height * 0.45),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
              text: 'Login',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              color: kPrimaryColor,
              textColor: kPrimaryColorLight),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
              text: 'Sign',
              press: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignScreen();
                    }))
                  },
              color: kPrimaryColorLight,
              textColor: Colors.black),
        ],
      ),
    );
  }
}
