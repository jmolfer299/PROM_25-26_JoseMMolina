import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Imágenes")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image1.png", height: 80),
          Image.asset("assets/image2.png", height: 80),
          Image.asset("assets/image3.png", height: 80),
          Image.asset("assets/img4.png", height: 80),
          Image.asset("assets/img5.png", height: 80),
        ],
      ),
    );
  }
}
