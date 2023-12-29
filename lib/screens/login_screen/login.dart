import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/components/buttons/button_google.dart';
import 'package:mobilplan_mobile/components/buttons/button_secondary.dart';
import 'package:mobilplan_mobile/components/email/email_text_field.dart';
import 'package:mobilplan_mobile/components/password/password_text_field.dart';
import '../../components/buttons/button_primary.dart';
import '../../components/buttons/forgot_password_button.dart';
import '../../components/logo/logo_image.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  child: EmailText(),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            const Row(
              children: [
                Expanded(
                  child: PasswordField(),
                ),
              ],
            ),
            const SizedBox(height: 75.0),
            Row(
              children: [
                Expanded(
                    child: ButtonPrimary(
                      label: "Entrar",
                      onPressed: () {},
                    )
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                Expanded(
                    child: GoogleLoginButton(
                      onPressed: () {},
                    )
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                Expanded(
                    child: ButtonSecondary(
                      label: "Cadastrar",
                      onPressed: () {},
                    )
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ForgotPasswordLink(
                  onLinkTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Ação de recuperação de senha será implementada.'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ],
            )

          ]),
        ),
      ),
    );
  }
}
