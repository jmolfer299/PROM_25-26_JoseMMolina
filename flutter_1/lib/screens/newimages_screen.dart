import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class NewImagesScreen extends StatelessWidget {
  const NewImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Galería")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image1.png", width: 100),
          Image.network(
            'https://img.icons8.com/color/512/flutter.png',
            width: 100,
          ),
          Image.asset("assets/image1.png", width: 100),
        ],
      ),
    );
  }
}
