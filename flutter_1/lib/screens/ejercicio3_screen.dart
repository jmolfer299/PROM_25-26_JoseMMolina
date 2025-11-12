import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import '../drawer_menu.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Galería")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image1.png", width: 100),
          Image.asset("assets/image2.png", width: 100),
          Image.asset("assets/image3.png", width: 100),
        ],
      ),
    );
  }
}
