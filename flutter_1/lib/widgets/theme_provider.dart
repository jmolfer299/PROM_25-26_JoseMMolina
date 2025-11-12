import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDark;
  final Function(bool) toggleTheme;

  const ThemeProvider({
    super.key,
    required this.isDark,
    required this.toggleTheme,
    required super.child,
  });

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return isDark != oldWidget.isDark;
  }
}