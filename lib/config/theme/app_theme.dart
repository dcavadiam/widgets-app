import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.brown,
  Colors.grey,
];

class AppTheme {
  final int selectedcolor;
  final bool isDark;

  AppTheme( {this.isDark = false, this.selectedcolor = 0})
      : assert(selectedcolor >= 0,
            'selectedcolor must be greater than or equal to 0'),
        assert(selectedcolor < colorList.length,
            'selectedcolor must be less than ${colorList.length}');

  ThemeData getColor() => ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedcolor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
