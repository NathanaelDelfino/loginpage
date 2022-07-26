import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loginpagedart/Components/text_field_container.dart';
import 'package:loginpagedart/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool viewPassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFildContainer(
      child: TextField(
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        obscureText: viewPassword,
        decoration: InputDecoration(
          hintText: "Senha",
          icon: Icon(Icons.lock, color: kPrimaryColor),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              viewPassword ? Icons.visibility : Icons.visibility_off,
              color: kPrimaryColor,
            ),
            onPressed: () => {
              setState(() {
                viewPassword = !viewPassword;
              })
            },
          ),
        ),
      ),
    );
  }
}
