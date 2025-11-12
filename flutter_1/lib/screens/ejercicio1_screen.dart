import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import '../drawer_menu.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Theme.of(context).brightness == Brightness.light 
      ? AppColorsLight.background 
      : AppColorsDark.background ,
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Información"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Jose Maria Molina Fdez-Crehuet",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "https://github.com/jmolfer299/PROM_25-26_JoseMMolina",
              style: TextStyle(
                fontSize: 18, 
                color: Theme.of(context).colorScheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}