import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Información")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tu Nombre Completo",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("https://github.com/jmolfer299/PROM_25-26_JoseMMolina",
                style: TextStyle(fontSize: 18, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
