import 'package:flutter/material.dart';
import 'package:flutter_1/screens/challenge_screen.dart';
import 'package:flutter_1/screens/instagram_screen.dart';
import 'screens/info_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/icons_screen.dart';
import 'screens/images_screen.dart';
import 'screens/text_screen.dart';
import 'screens/newimages_screen.dart';
import 'screens/screen_piramide.dart';
import 'screens/counter_screen.dart';
import 'screens/colors_screen.dart';
import 'screens/image_random_screen.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text(
                "Menú Principal",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Información"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Perfil"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_library),
            title: Text("Galería"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GalleryScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Iconos"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IconsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Imágenes"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.text_fields),
            title: Text("Textos"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.image_outlined),
            title: Text("Nuevas Imágenes"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewImagesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.image_outlined),
            title: Text("Imágenes en pirámide"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagesPiramide()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.dangerous_outlined),
            title: Text("Challenge"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChallengeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.countertops),
            title: Text("Counter"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CounterScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text("Instagram"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InstagramScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text("Colores Random"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RandomColors()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.gamepad),
            title: Text("Imagen Random"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RandomImageGame()),
              );
            },
          ),
        ],
      ),
    );
  }
}
