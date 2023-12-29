import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

class ButtonPrimary extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ButtonPrimary({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: mobilPlanTheme.colorScheme.primary,
        textStyle: const TextStyle(
          fontFamily: 'Montserrat'  ,
          fontSize: 20,),
        shadowColor: Colors.black,
        elevation: 6,
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