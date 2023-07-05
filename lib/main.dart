import 'package:flutter/material.dart';
import 'package:water_counter_app/config/theme/app_theme.dart';
import 'package:water_counter_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water counter',
      theme: AppTheme(selectedColor: 1).theme(),
      home: const StartScreen(),
    );
  }
}

