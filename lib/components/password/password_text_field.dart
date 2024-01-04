import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

typedef ValidatorFunction = String? Function(String? value);

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String label;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;

  const PasswordField({
    super.key,
    required this.controller,
    this.focusNode,
    required this.label,
    required this.keyboardType,
    this.validator,
  });

  @override
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      obscureText: _obscureText,
      validator: widget.validator,
      style: const TextStyle(fontSize: 20, height: 1.5),
      decoration: InputDecoration(
        labelText: widget.label,
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
