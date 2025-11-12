import 'package:flutter/material.dart';
import 'package:space/widgets/custom_matrial_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String pageRoute = 'Login Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgrounds/Login.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          CustomMatrialButton(
            text: 'Explore',
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('Home Screen');
            },
          ),
        ],
      ),
    );
  }
}
