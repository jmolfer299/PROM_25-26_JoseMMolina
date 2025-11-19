import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: AppColorsDark.text,
        ),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.primary
          : AppColorsDark.secondary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
