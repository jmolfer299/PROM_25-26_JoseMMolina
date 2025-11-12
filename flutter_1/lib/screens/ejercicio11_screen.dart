import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/drawer_menu.dart';

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

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
                        children: const [
                          Text(
                            '883',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Following', style: TextStyle(fontSize: 14)),
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
              children: const [
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
                Text(
                  'https://github.com/jmolfer299',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
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
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                    ),
                    child: Text(
                      'Following',
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
                          color: Colors.purple.withOpacity(0.3),
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
                          color: Colors.purple.withOpacity(0.3),
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
                          color: Colors.purple.withOpacity(0.3),
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
                          color: Colors.purple.withOpacity(0.3),
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
                          color: Colors.purple.withOpacity(0.3),
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
