import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginpagedart/Components/rounded_button.dart';
import 'package:loginpagedart/Screens/Login/login_screen.dart';
import 'package:loginpagedart/Screens/Sign/sign_screen.dart';
import 'package:loginpagedart/Screens/Welcome/components/background.dart';
import 'package:loginpagedart/constants.dart';
import 'package:loginpagedart/responsive.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Esse size nos proporcional o tamanho total da tela
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
            //Esse Responsive é o Responsive.dart que criamos
            child: Responsive(
                mobile: MobileWelcomeScreen(size: size),
                desktop: DesktopWelcomeScreen(size: size),
                tablet: TabletWelcomeScreen(size: size))),
      ),
    );
  }
}

class DesktopWelcomeScreen extends StatelessWidget {
  const DesktopWelcomeScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child: WelcomeImage()),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 450,
              child: LoginAndSignUp(),
            ),
          ],
        )),
      ],
    );
  }
}

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      Text('BEM-VINDO', style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(height: size.height * 0.03),
      SvgPicture.asset('assets/icons/chat.svg', height: size.height * 0.45),
      SizedBox(height: size.height * 0.03),
    ]);
  }
}

class LoginAndSignUp extends StatelessWidget {
  const LoginAndSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignScreen();
                  }))
                },
            color: kPrimaryColorLight,
            textColor: Colors.black),
      ],
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignScreen();
                  }))
                },
            color: kPrimaryColorLight,
            textColor: Colors.black),
      ],
    );
  }
}

class TabletWelcomeScreen extends StatelessWidget {
  const TabletWelcomeScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignScreen();
                  }))
                },
            color: kPrimaryColorLight,
            textColor: Colors.black),
      ],
    );
  }
}
