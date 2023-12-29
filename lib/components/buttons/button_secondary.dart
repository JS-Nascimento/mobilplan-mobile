

import 'package:flutter/material.dart';

import '../../themes/theme_mobilplan.dart';

class ButtonSecondary extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ButtonSecondary({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: mobilPlanTheme.colorScheme.tertiary, side: BorderSide(color: mobilPlanTheme.colorScheme.tertiary), // Cor da borda
        textStyle: const TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
