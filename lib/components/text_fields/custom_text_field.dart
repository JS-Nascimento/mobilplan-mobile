import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key,
    required this.label,
    required this.keyboardType,
    required this.controller,
    this.validator,
  });

  final String label;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
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
