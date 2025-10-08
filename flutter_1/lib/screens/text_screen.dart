import 'package:flutter/material.dart';
import '../drawer_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // Safe call to GoogleFonts.lobster: if it throws for any reason, fall back to a
    // default TextStyle so the screen doesn't crash at runtime.
    final TextStyle lobsterStyle = (() {
      try {
        return GoogleFonts.lobster(fontSize: 20);
      } catch (e) {
        // Could log the error if needed: debugPrint('GoogleFonts error: $e');
        return const TextStyle(fontSize: 20);
      }
    })();

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(title: const Text("Textos")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color.fromRGBO(247, 144, 144, 1),
              alignment: Alignment.center,
              child: const Text(
                "Texto 1",
                style: TextStyle(fontSize: 20, fontFamily: 'Serif'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 220, 247, 144),
              alignment: Alignment.center,
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc ut laoreet dictum, enim erat dictum urna, nec dictum enim enim nec enim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante.",
                style: TextStyle(fontSize: 20, fontFamily: 'Monospace'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(247, 144, 144, 1),
              alignment: Alignment.center,
              child: Text(
                "Texto 3",
                style: lobsterStyle,
              ),
            ),  
          ),
        ],
      ),
    );
  }
}
