import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aviz());
}

class Aviz extends StatelessWidget {
  const Aviz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'shabnam',
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColor.customRed,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ))),
      home: WelcomeScreen(),
    );
  }
}
