import 'package:flutter/material.dart';
import 'logo_animation.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize your background color
      body: Center(
        child: LogoAnimation(),
      ),
    );
  }
}
