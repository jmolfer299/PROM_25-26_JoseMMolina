import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/screens/ejercicio11_instagram_screen.dart';
import 'package:flutter_1/screens/ejercicio14_screen_random_number_form.dart';
import 'package:flutter_1/screens/ejercicio9_screen.dart';

import 'package:flutter_1/widgets/theme_provider.dart';
import 'screens/ejercicio1_screen.dart';
import 'screens/ejercicio2_screen.dart';
import 'screens/ejercicio3_screen.dart';
import 'screens/ejercicio4_screen.dart';
import 'screens/ejercicio5_screen.dart';
import 'screens/ejercicio6_screen.dart';
import 'screens/ejercicio7_screen.dart';
import 'screens/ejercicio8_screen.dart';
import 'screens/ejercicio10_screen.dart';
import 'screens/ejercicio12_screen.dart';
import 'screens/ejercicio13_screen.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = ThemeProvider.of(context);
    final backgroundColor = Theme.of(context).brightness == Brightness.light
        ? AppColorsLight.background
        : AppColorsDark.background;
    final textColor = Theme.of(context).brightness == Brightness.light
        ? AppColorsLight.text
        : AppColorsDark.text;
    final primaryColor = Theme.of(context).brightness == Brightness.light
        ? AppColorsLight.primary
        : AppColorsDark.primary;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Drawer(
      backgroundColor: backgroundColor,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: primaryColor),
                  child: Center(
                    child: Text(
                      "Menú Principal",
                      style: AppTextStyles.medium.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info, color: textColor),
                  title: Text(
                    "Ejercicio 1",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person, color: textColor),
                  title: Text(
                    "Ejercicio 2",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.photo_library, color: textColor),
                  title: Text(
                    "Ejercicio 3",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GalleryScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star, color: textColor),
                  title: Text(
                    "Ejercicio 4",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IconsScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.image, color: textColor),
                  title: Text(
                    "Ejercicio 5",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImagesScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.text_fields, color: textColor),
                  title: Text(
                    "Ejercicio 6",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.image_outlined, color: textColor),
                  title: Text(
                    "Ejercicio 7",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewImagesScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.image_outlined, color: textColor),
                  title: Text(
                    "Ejercicio 8",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImagesPiramide()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.dangerous_outlined, color: textColor),
                  title: Text(
                    "Ejercicio 9",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChallengeScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.countertops, color: textColor),
                  title: Text(
                    "Ejercicio 10",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CounterScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.camera, color: textColor),
                  title: Text(
                    "Ejercicio 11",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstagramScreen()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.color_lens, color: textColor),
                  title: Text(
                    "Ejercicio 12",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RandomColors()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.gamepad, color: textColor),
                  title: Text(
                    "Ejercicio 13",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RandomImageGame()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.numbers, color: textColor),
                  title: Text(
                    "Ejercicio 14",
                    style: AppTextStyles.small.copyWith(color: textColor),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RandomNumberForm()),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              border: Border(top: BorderSide(color: Colors.white24)),
            ),
            child: SwitchListTile(
              title: Text(
                isDark ? 'Tema Oscuro' : 'Tema Claro',
                style: AppTextStyles.small.copyWith(color: Colors.white),
              ),
              secondary: Icon(
                isDark ? Icons.dark_mode : Icons.light_mode,
                color: Colors.white,
              ),
              value: isDark,
              onChanged: (value) => themeProvider?.toggleTheme(value),
            ),
          ),
        ],
      ),
    );
  }
}
