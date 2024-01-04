import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/components/buttons/button_secondary.dart';
import 'package:mobilplan_mobile/components/text_fields/custom_text_field.dart';

import '../../components/buttons/button_primary.dart';
import '../../components/logo/logo_image.dart';

class EmailConfirm extends StatelessWidget {
  EmailConfirm({super.key});

  final TextEditingController _codeController = TextEditingController();

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
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Enviamos um código de confirmação para o seu email. \nPor favor, insira o código abaixo.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            Row(
              children: [
                Expanded(
                  child: CustomText(
                    controller: _codeController,
                    label: "Código de Confirmação",
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: false),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 160.0),
            Row(
              children: [
                Expanded(
                    child: ButtonPrimary(
                  label: "Enviar",
                  onPressed: () {},
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
    );
  }
}
