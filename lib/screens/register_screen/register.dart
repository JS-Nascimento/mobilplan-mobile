import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/components/buttons/button_secondary.dart';
import 'package:mobilplan_mobile/components/email/email_text_field.dart';
import 'package:mobilplan_mobile/components/password/password_text_field.dart';
import 'package:mobilplan_mobile/components/text_fields/custom_text_field.dart';

import '../../components/buttons/button_primary.dart';
import '../../components/logo/logo_image.dart';
import '../../components/password/password_criteria_widget.dart';
import '../../utils/ContantUtils.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _confirmPasswordController.addListener(_onConfirmPasswordChanged);
  }

  void _onConfirmPasswordChanged() {
    setState(() {
      _formKey.currentState!.validate();
    });
  }

  @override
  void dispose() {
    _confirmPasswordController.removeListener(_onConfirmPasswordChanged);
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 48.0, 32.0, 32.0),
          child: Form(
            key: _formKey,
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(),
                ],
              ),
              const SizedBox(height: 50.0),
              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      label: "Nome Completo",
                      keyboardType: TextInputType.name,
                      validator: _validateFullName,
                      controller: _fullNameController,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: EmailText(
                      controller: _emailController,
                      validator: _validateEmail,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      PasswordField(
                        controller: _passwordController,
                        focusNode: _passwordFocusNode,
                        validator: _validatePassword,
                        label: "Senha",
                        keyboardType: TextInputType.text,
                      ),
                      PasswordCriteriaWidget(
                        passwordController: _passwordController,
                        focusNode: _passwordFocusNode,
                      ),
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                      child: PasswordField(
                    controller: _confirmPasswordController,
                    validator: _validateConfirmPassword,
                    label: "Confirme a Senha",
                    keyboardType: TextInputType.text,
                  )),
                ],
              ),
              const SizedBox(height: 75.0),
              Row(
                children: [
                  Expanded(
                      child: ButtonPrimary(
                    label: "Cadastrar",
                    onPressed: _submitForm,
                  )),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                      child: ButtonSecondary(
                    label: "Cancelar",
                    onPressed: () {},
                  )),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  String? _validatePassword(String? value) {
    RegExp regex = RegExp(ConstantUtils.passwordRegex);
    if (!regex.hasMatch(value ?? '')) {
      return 'Senha não atende aos critérios de complexidade.';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value != _passwordController.text) {
      return 'As senhas não correspondem.';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira um e-mail';
    }
    RegExp emailRegex = RegExp(r'\b[\w.-]+@[\w.-]+\.\w{2,4}\b');
    if (!emailRegex.hasMatch(value)) {
      return 'Por favor, insira um e-mail válido';
    }
    return null;
  }

  String? _validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira seu nome completo';
    }
    if (!value.trim().contains(' ')) {
      return 'Por favor, insira pelo menos dois nomes';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Se o formulário passar na validação
      // Prossiga com o registro ou ação desejada
    }
  }
}
