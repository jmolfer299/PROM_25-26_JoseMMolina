import 'package:flutter/material.dart';
import '../drawer_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Textos")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color.fromRGBO(247, 144, 144, 1),
              alignment: Alignment.center,
              child: Text(
                "Texto 1",
                style: TextStyle(fontSize: 20, fontFamily: 'Serif'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 220, 247, 144),
              alignment: Alignment.center,
              child: Text(
                "Texto 2",
                style: TextStyle(fontSize: 20, fontFamily: 'Monospace'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(247, 144, 144, 1),
              alignment: Alignment.center,
              child: Text(
                "Texto 3",
                style: GoogleFonts.lobster(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
