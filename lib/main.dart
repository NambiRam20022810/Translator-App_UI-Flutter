import 'package:flutter/material.dart';
import 'logo_animation.dart';
import 'splash_page.dart';
import 'translatorui.dart'; // Import your TranslatorUI screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Translator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Use SplashScreen as the initial route
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToTranslator();
  }

  void _navigateToTranslator() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a delay for animation
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => TranslatorUI()), // Navigate to TranslatorUI
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoAnimation(),
      ),
    );
  }
}
