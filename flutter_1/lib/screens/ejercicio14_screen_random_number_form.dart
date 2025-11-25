import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/drawer_menu.dart';
import 'package:flutter_1/widgets/appbar_widget.dart';

class RandomNumberForm extends StatefulWidget {
  const RandomNumberForm({super.key});

  @override
  State<RandomNumberForm> createState() => _RandomNumberFormState();
}

class _RandomNumberFormState extends State<RandomNumberForm> {
  String textoRespuesta = '';
  Color colorRespuesta = Colors.red;
  String numeroIntroducido = '';
  static int numeroAleatorio = Random().nextInt(100) + 1;
  static int intentos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? AppColorsLight.background
          : AppColorsDark.background,
      drawer: DrawerMenu(),
      appBar: AppbarWidget(title: "Formulario número random"),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          left: 8,
          right: 8,
          bottom: 16.0,
        ),
        child: Column(
          children: [
            Text(
              'Debes ingresar un número para intentar adivinar el número random generado por la app.',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColorsLight.text
                    : AppColorsDark.text,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Ingrese un número',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  numeroIntroducido = text;
                });
              },
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      comprobarTexto(numeroIntroducido);
                    },
                    child: Text('Verificar'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      resetGame();
                    },
                    child: Text('Resetear'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              textoRespuesta,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: colorRespuesta,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void comprobarTexto(String text) {
    int? numero = int.tryParse(text);
    if (numero != null) {
      setState(() {
        if (intentos < 10) {
          comprobarNumero(numero);
        }
      });
    } else {
      setState(() {
        textoRespuesta = 'Número inválido, por favor ingrese un número válido.';
        colorRespuesta = Colors.red;
      });
    }
  }

  void comprobarNumero(int numero) {
    if (numero < 1 || numero > 100) {
      textoRespuesta = 'El número debe estar entre 1 y 100.';
      colorRespuesta = Colors.red;
    } else if (numero < numeroAleatorio) {
      intentos++;
      textoRespuesta = 'El número es mayor que $numero. Intentos: $intentos/10';
      colorRespuesta = Colors.orange;
    } else if (numero > numeroAleatorio) {
      intentos++;
      textoRespuesta = 'El número es menor que $numero. Intentos: $intentos/10';
      colorRespuesta = Colors.orange;
    } else {
      textoRespuesta =
          '¡Felicidades! ¡Adivinaste el número $numero en $intentos intentos!';
      intentos = 10;
      colorRespuesta = Colors.green;
    }
  }

  void resetGame() {
    setState(() {
      numeroAleatorio = Random().nextInt(100) + 1;
      intentos = 0;
      textoRespuesta = 'Número reseteado. ¡Intenta adivinar de nuevo!';
      colorRespuesta = Colors.green;
    });
  }
}
