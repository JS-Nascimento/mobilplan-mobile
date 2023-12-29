import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _passwordController,
      keyboardType: TextInputType.text,
      obscureText: _obscureText,
      style: const TextStyle(fontSize: 20, height: 1.5),
      decoration: InputDecoration(
        labelText: "Senha",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: const EdgeInsets.only(left: 16.0),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: mobilPlanTheme.colorScheme.onPrimary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: mobilPlanTheme.colorScheme.onPrimary),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: mobilPlanTheme.colorScheme.onPrimary),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
