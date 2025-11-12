import 'package:flutter/material.dart';

// Colores para tema claro
class AppColorsLight {
  static const Color primary = Color(0xFF2563EB);
  static const Color secondary = Color(0xFF7C3AED);
  static const Color background = Color(0xFFF8FAFC);
  static const Color text = Color(0xFF1E293B);
  static const Color red = Color(0xFFFF1100);
  static const Color yellow = Color(0xFFF5F500);
}

// Colores para tema oscuro
class AppColorsDark {
  static const Color red = Color(0xFF880900);
  static const Color yellow = Color(0xFFA1A100);
  static const Color primary = Color(0xFF131951);
  static const Color secondary = Color(0xFF3E2871);
  static const Color background = Color(0xFF0F102A);
  static const Color text = Color(0xFFF1F5F9);
}

// Estilos de texto
class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  
  static const TextStyle medium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  
  static const TextStyle small = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );
}

