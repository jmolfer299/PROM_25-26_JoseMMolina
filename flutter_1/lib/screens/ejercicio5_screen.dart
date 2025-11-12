import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import '../drawer_menu.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
        ? AppColorsLight.background
        : AppColorsDark.background,
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
