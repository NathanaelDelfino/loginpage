import 'package:flutter/material.dart';
import 'package:loginpagedart/constants.dart';

class AlredyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;

  const AlredyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Não possuí uma conta?" : "Já possuí uma conta?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Se inscrever" : "Logar",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
