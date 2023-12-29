import 'package:flutter/material.dart';
import 'package:mobilplan_mobile/screens/login_screen/login.dart';
import 'package:mobilplan_mobile/themes/theme_mobilplan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mobilPlanTheme,
      home: Login(),
    );
  }
}
