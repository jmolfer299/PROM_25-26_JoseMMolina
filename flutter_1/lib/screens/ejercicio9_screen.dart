import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/drawer_menu.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Challenge")),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 3),
          ),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: const Text(
            // 3. Se añade 'const' para optimización
            'H',
            style: TextStyle(
              fontSize: 50,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
