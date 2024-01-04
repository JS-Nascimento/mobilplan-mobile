import 'package:flutter/material.dart';

class PasswordCriteriaWidget extends StatefulWidget {
  final TextEditingController passwordController;
  final FocusNode focusNode;

  const PasswordCriteriaWidget({
    super.key,
    required this.passwordController,
    required this.focusNode,
  });

  @override
  PasswordCriteriaWidgetState createState() => PasswordCriteriaWidgetState();
}

class PasswordCriteriaWidgetState extends State<PasswordCriteriaWidget> {
  bool isFocused = false;

  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasDigit = false;
  bool hasSpecialCharacter = false;
  bool hasValidLength = false;

  bool showUppercase = true;
  bool showLowercase = true;
  bool showDigit = true;
  bool showSpecialCharacter = true;
  bool showValidLength = true;

  @override
  void initState() {
    super.initState();
    widget.passwordController.addListener(_updateCriteria);
    widget.focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      isFocused = widget.focusNode.hasFocus;
    });
  }

  void _updateCriteria() {
    final password = widget.passwordController.text;
    setState(() {
      hasUppercase = password.contains(RegExp(r'[A-Z]'));
      hasLowercase = password.contains(RegExp(r'[a-z]'));
      hasDigit = password.contains(RegExp(r'\d'));
      hasSpecialCharacter = password.contains(RegExp(r'[@#$%^&+=-]'));
      hasValidLength = password.length >= 6 && password.length <= 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isFocused) {
      return const SizedBox.shrink(); // Ou outro widget para espaço vazio
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (!hasUppercase) _buildCriteria('Deve conter uma letra maiúscula'),
        if (!hasLowercase) _buildCriteria('Deve conter uma letra minúscula'),
        if (!hasDigit) _buildCriteria('Deve conter um dígito'),
        if (!hasSpecialCharacter) _buildCriteria('Deve conter um caractere (@#\$%^&+=-)'),
        if (!hasValidLength) _buildCriteria('Deve ter de 6 a 10 caracteres'),
      ],
    );
  }


  Widget _buildCriteria(String criteria) {
    return Row(
      children: [
        const Icon(Icons.remove_circle, color: Colors.red),
        const SizedBox(width: 8.0),
        Text(criteria, style: const TextStyle(color: Colors.red,
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          height: 1.5,)),
      ],
    );
  }
    @override
  void dispose() {
    widget.passwordController.removeListener(_updateCriteria);
    super.dispose();
  }
}
