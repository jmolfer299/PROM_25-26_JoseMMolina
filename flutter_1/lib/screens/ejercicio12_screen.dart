import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'dart:math';
import 'dart:async';
import '../drawer_menu.dart';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  int timeRemaining = 60; // Tiempo en segundos
  late String randomName;
  late Color randomColor;
  Timer? _gameTimer;
  bool gameEnded = false;

  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color.fromARGB(255, 255, 110, 20),
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    startGameTimer();
  }

  void startGameTimer() {
    _gameTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeRemaining > 0) {
          timeRemaining--;
          getRandomColor();
          getRandomName();
        } else {
          endGame();
        }
      });
    });
  }

  void endGame() {
    _gameTimer?.cancel();
    setState(() {
      gameEnded = true;
    });

    // Mostrar diálogo de fin de juego
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¡Juego Terminado!'),
        content: Text('Puntuación final: $points puntos'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              restartGame();
            },
            child: const Text('Jugar de nuevo'),
          ),
        ],
      ),
    );
  }

  void restartGame() {
    setState(() {
      points = 0;
      timeRemaining = 60;
      gameEnded = false;
      getRandomColor();
      getRandomName();
    });
    startGameTimer();
  }

  @override
  void dispose() {
    _gameTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      appBar: AppBar(
        title: const Text('Random Colors'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: DrawerMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Temporizador
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Tiempo: ${timeRemaining}s',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: timeRemaining <= 10
                        ? Colors.red
                        : Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),

          // Puntos
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),

          // Área de juego
          Center(
            child: GestureDetector(
              onTap: gameEnded
                  ? null
                  : () {
                      onGiftTap(randomName, randomColor);
                    },
              child: Column(
                children: [
                  Container(width: 120, color: randomColor, height: 120),
                  Text(
                    randomName,
                    style: TextStyle(
                      color: randomColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Botón de reinicio
          ElevatedButton(
            onPressed: () {
              _gameTimer?.cancel();
              restartGame();
            },
            child: const Text('Reiniciar'),
          ),
        ],
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }

  void onGiftTap(String name, Color color) {
    if (gameEnded) return;

    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
