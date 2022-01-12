import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpagedart/Components/already_have_an_account_acheck.dart';
import 'package:loginpagedart/Components/rounded_button.dart';
import 'package:loginpagedart/Components/rounded_input_field.dart';
import 'package:loginpagedart/Components/rounded_password_field.dart';
import 'package:loginpagedart/Screens/Sign/sign_screen.dart';
import 'package:loginpagedart/Screens/Welcome/components/background.dart';
import 'package:loginpagedart/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('BEM-VINDO', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Insira o seu email",
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
              text: 'Login',
              press: () => {},
              color: kPrimaryColor,
              textColor: kPrimaryColorLight),
          AlredyHaveAnAccountCheck(
            login: true,
            press: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignScreen();
              }))
            },
          )
        ],
      ),
    );
  }
}
