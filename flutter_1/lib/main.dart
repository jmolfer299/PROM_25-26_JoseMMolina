import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/theme_provider.dart';
import 'screens/ejercicio1_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDark = false;

  void _toggleTheme(bool value) {
    setState(() {
      _isDark = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      isDark: _isDark,
      toggleTheme: _toggleTheme,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Drawer Demo',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
        home: InfoScreen(),
      ),
    );
  }
}