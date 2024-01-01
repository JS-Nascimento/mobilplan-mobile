import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/components/buttons/button_google.dart';
import 'package:mobilplan_mobile/components/buttons/button_secondary.dart';
import 'package:mobilplan_mobile/components/email/email_text_field.dart';
import 'package:mobilplan_mobile/components/password/password_text_field.dart';
import 'package:mobilplan_mobile/components/text_fields/custom_text_field.dart';

import '../../components/buttons/button_primary.dart';
import '../../components/logo/logo_image.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 48.0, 32.0, 32.0),
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
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: EmailText(),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Row(
              children: [
                Expanded(
                  child: PasswordField(
                    label: "Senha",
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Row(
              children: [
                Expanded(
                  child: PasswordField(
                    label: "Confirme a Senha",
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 75.0),
            Row(
              children: [
                Expanded(
                    child: ButtonPrimary(
                      label: "Cadastrar",
                      onPressed: () {},
                    )
                ),
              ],
            ),
          const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                    child: ButtonSecondary(
                      label: "Cancelar",
                      onPressed: () {},
                    )
                ),
              ],
            ),

          ]),
        ),
      ),
    );
  }
}
