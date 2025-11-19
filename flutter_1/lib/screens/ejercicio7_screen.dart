import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/widgets/appbar_widget.dart';
import '../drawer_menu.dart';

class NewImagesScreen extends StatelessWidget {
  const NewImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppbarWidget(title: "Galería de Imágenes"),
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
