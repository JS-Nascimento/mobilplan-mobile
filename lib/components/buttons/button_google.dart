import 'package:flutter/material.dart';

class GoogleLoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleLoginButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        side: const BorderSide(color: Colors.blue),
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
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajusta o Row para se ajustar ao seu conteúdo
        children: [
          Image.asset('assets/images/google_logo.png', height: 28, width: 28), // Logo do Google
          const SizedBox(width: 28), // Espaço entre a imagem e o texto
          const Text('Login com Google'), // Texto do botão
        ],
      ),
    );
  }
}
