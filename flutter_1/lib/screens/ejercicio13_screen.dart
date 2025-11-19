import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/widgets/appbar_widget.dart';
import 'dart:math';
import 'dart:async';
import '../drawer_menu.dart';

class RandomImageGame extends StatefulWidget {
  const RandomImageGame({super.key});

  @override
  State<RandomImageGame> createState() => _RandomImageGameState();
}

class _RandomImageGameState extends State<RandomImageGame> {
  int points = 0;
  int timePerImage = 2; // Tiempo en segundos para pulsar cada imagen
  int timeRemaining = 2;
  double imageX = 0.0;
  double imageY = 0.0;
  Timer? _imageTimer;
  bool gameActive = true;
  int totalImages = 0;

  @override
  void initState() {
    super.initState();
    generateRandomPosition();
    startImageTimer();
  }

  void generateRandomPosition() {
    Random random = Random();
    setState(() {
      // Posiciones aleatorias entre 0.1 y 0.8 para que la imagen no salga en los bordes
      imageX = 0.1 + random.nextDouble() * 0.7;
      imageY = 0.1 + random.nextDouble() * 0.6;
      timeRemaining = timePerImage;
      totalImages++;
    });
  }

  void startImageTimer() {
    _imageTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeRemaining > 0) {
          timeRemaining--;
        } else {
          // No se pulsó a tiempo, restar 2 puntos
          points -= 2;
          generateRandomPosition();
        }
      });
    });
  }

  void onImageTap() {
    if (gameActive) {
      setState(() {
        points++; // Sumar 1 punto
      });
      _imageTimer?.cancel();
      generateRandomPosition();
      startImageTimer();
    }
  }

  void restartGame() {
    setState(() {
      points = 0;
      totalImages = 0;
      timeRemaining = timePerImage;
      gameActive = true;
    });
    _imageTimer?.cancel();
    generateRandomPosition();
    startImageTimer();
  }

  @override
  void dispose() {
    _imageTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppbarWidget(title: "Juego imagen random"),
      body: Stack(
        children: [
          // Información superior
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Puntos: $points',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Tiempo: ${timeRemaining}s',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: timeRemaining <= 1
                        ? Colors.red
                        : Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Imágenes: $totalImages',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
              ],
            ),
          ),

          // Imagen en posición aleatoria
          Positioned(
            left: MediaQuery.of(context).size.width * imageX,
            top: MediaQuery.of(context).size.height * imageY,
            child: GestureDetector(
              onTap: onImageTap,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(Icons.star, size: 50, color: Colors.white),
              ),
            ),
          ),

          // Botón de reinicio
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: restartGame,
                icon: const Icon(Icons.refresh),
                label: const Text('Reiniciar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),

          // Instrucciones
          Positioned(
            bottom: 90,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                ),
                child: const Text(
                  '¡Pulsa la estrella antes de que desaparezca!\n+1 punto si pulsas | -2 puntos si no pulsas',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
