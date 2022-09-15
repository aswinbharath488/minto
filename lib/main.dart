import 'package:flutter/material.dart';
import 'package:minto/screens/splash_screen/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Minto',
      home: SplashScreen(),
    );
  }
}
