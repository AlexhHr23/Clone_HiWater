import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 137, 186, 243)
          ),
        ),
        elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white
          ),
        ),
        useMaterial3: true, 
        appBarTheme: AppBarTheme(
          backgroundColor: _colorThemes[selectedColor]
        ),
        colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark
    );
  }
}
