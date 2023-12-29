import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/themes/colors_mobilplan.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

class ForgotPasswordLink extends StatelessWidget {
  final VoidCallback onLinkTap;

  const ForgotPasswordLink({super.key, required this.onLinkTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style.copyWith(fontSize: 16),
        children: [
          const TextSpan(
            text: "Esqueceu a senha? ",
            style: TextStyle(
              color: MobilplanColors.textColor,
              // fontSize: 18, // Não é necessário se definido acima
            ),
          ),
          TextSpan(
            text: "Clique aqui.",
            style: const TextStyle(
              color: MobilplanColors.textColor,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              // fontSize: 18, // Não é necessário se definido acima
            ),
            recognizer: TapGestureRecognizer()..onTap = onLinkTap,
          ),
        ],
      ),
    );
  }
}
