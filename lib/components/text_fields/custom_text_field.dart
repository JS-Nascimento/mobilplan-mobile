import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.label, required this.keyboardType});

  final String label;
  final TextInputType keyboardType;
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _emailController,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 20, height: 1.5),
      decoration: InputDecoration(
        labelText: label,
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
      ),
    );
  }
}
