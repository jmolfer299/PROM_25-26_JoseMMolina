import 'package:flutter/material.dart';
import 'screens/info_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/icons_screen.dart';
import 'screens/images_screen.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text("Menú Principal",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Información"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Perfil"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_library),
            title: Text("Galería"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GalleryScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Iconos"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IconsScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Imágenes"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagesScreen()));
            },
          ),
        ],
      ),
    );
  }
}
