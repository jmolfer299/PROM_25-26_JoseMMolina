import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/drawer_menu.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore_for_file: depend_on_referenced_packages

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({super.key});

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  String textoFollow = "Follow";
  Color colorFollow = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? AppColorsLight.background
            : AppColorsDark.background,
        elevation: 0,
        title: Row(
          children: [
            Text(
              '_josxmolinaa',
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColorsLight.text
                    : AppColorsDark.text,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.verified, color: Colors.blue, size: 18),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Profile Picture con gradient
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.pink, Colors.orange],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.purple,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Stats
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '9',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Posts', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            '1434',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Followers', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            '883',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Following", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jose Mª Molina Fdez-Crehuet',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  'Desarrollador de Aplicaciones Multiplataforma',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                Text('Ies Pablo Picasso', style: TextStyle(fontSize: 14)),
                Text('Málaga, España', style: TextStyle(fontSize: 14)),
                TextButton(
                  child: Text(
                    'https://github.com/jmolfer299',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse(
                      'https://github.com/jmolfer299/PROM_25-26_JoseMMolina',
                    );
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                SizedBox(height: 4),
                Text(
                  'Followed by leomessi, cristiano and 122 others',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (textoFollow == "Follow") {
                          textoFollow = "Following";
                          colorFollow = Colors.white;
                        } else {
                          textoFollow = "Follow";
                          colorFollow = Colors.blue;
                        }
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.grey),
                      backgroundColor:
                          Theme.of(context).brightness == Brightness.light
                          ? colorFollow
                          : Colors.black,
                    ),
                    child: Text(
                      textoFollow,
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.light
                            ? AppColorsLight.text
                            : AppColorsDark.text,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Text(
                      'Message',
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.light
                            ? AppColorsLight.text
                            : AppColorsDark.text,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.light
                            ? AppColorsLight.text
                            : AppColorsDark.text,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Theme.of(context).brightness == Brightness.light
                        ? AppColorsLight.text
                        : AppColorsDark.text,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Story Highlights
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('FLUTTER', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('PROYECTOS', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('TUTORIALES', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('TIPS', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.purple,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('CODE', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Tabs icons
          Row(
            children: [
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.grid_on),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.video_collection_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.shopping_bag_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.person_pin_outlined),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          const Divider(height: 1),

          // Grid de fotos
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: [
              Image.asset('assets/javaLogo.webp', fit: BoxFit.cover),
              Image.asset('assets/sql.jpg', fit: BoxFit.cover),
              Image.asset('assets/python.jpg', fit: BoxFit.cover),
              Image.asset('assets/html.png', fit: BoxFit.cover),
              Image.asset('assets/css.png', fit: BoxFit.cover),
              Image.asset('assets/js.png', fit: BoxFit.cover),
              Image.asset('assets/pascal.jpg', fit: BoxFit.cover),
              Image.asset('assets/delphi.png', fit: BoxFit.cover),
              Image.asset('assets/flutterLogo.png', fit: BoxFit.cover),
            ],
          ),
        ],
      ),
    );
  }
}
