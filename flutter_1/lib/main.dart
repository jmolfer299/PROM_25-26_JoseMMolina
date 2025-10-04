import 'package:flutter/material.dart';
import 'screens/info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: InfoScreen(), // pantalla inicial
    );
  }
}
