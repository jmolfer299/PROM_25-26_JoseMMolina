import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/widgets/appbar_widget.dart';
import '../drawer_menu.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppbarWidget(title: "Iconos en fila"),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 40),
          SizedBox(width: 10),
          Icon(Icons.star, size: 40),
          SizedBox(width: 10),
          Icon(Icons.favorite, size: 40),
          SizedBox(width: 10),
          Icon(Icons.phone, size: 40),
          SizedBox(width: 10),
          Icon(Icons.settings, size: 40),
        ],
      ),
    );
  }
}
