import 'package:flutter/material.dart';

import '../../themes/colors_mobilplan.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: MobilplanColors.customGrey,
        ),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
