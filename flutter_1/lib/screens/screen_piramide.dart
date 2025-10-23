import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class ImagesPiramide extends StatelessWidget {
  const ImagesPiramide({super.key});

  @override
  Widget build(BuildContext context) {
    // Ejemplo de estructura
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: Text("Galería")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/profile.png", width: 100)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("HOLA")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/image1.png", width: 100),
                  Text("ESTE"),
                  SizedBox(height: 8), // separación entre texto e imagen
                ],
              ),
              SizedBox(width: 25), // separación entre columnas
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/image2.png", width: 100),
                  Text("ES"),
                  SizedBox(height: 8),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img4.png", width: 100),
                  Text("MI"),
                  SizedBox(height: 8), // separación entre texto e imagen
                ],
              ),
              SizedBox(width: 25),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [                 
                  Image.asset("assets/image3.png", width: 100),
                  Text("EJERCICIO"),
                  SizedBox(height: 5), // separación entre texto e imagen
                ],
              ),
              SizedBox(width: 25), // separación entre columnas
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img5.png", width: 100),
                  Text("8"),
                  SizedBox(height: 8),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}
