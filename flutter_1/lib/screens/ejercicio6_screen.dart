import 'package:flutter/material.dart';
import 'package:flutter_1/core/app_colors.dart';
import 'package:flutter_1/widgets/appbar_widget.dart';
import '../drawer_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final TextStyle lobsterStyle = (() {
      try {
        return GoogleFonts.lobster(fontSize: 20);
      } catch (e) {
        return const TextStyle(fontSize: 20);
      }
    })();

    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppbarWidget(title: "Textos"),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColorsLight.red
                  : AppColorsDark.red,
              alignment: Alignment.center,
              child: const Text(
                "Texto 1",
                style: TextStyle(fontSize: 20, fontFamily: 'Serif'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColorsLight.yellow
                  : AppColorsDark.yellow,
              alignment: Alignment.center,
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc ut laoreet dictum, enim erat dictum urna, nec dictum enim enim nec enim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante. Etiam euismod, urna eu tincidunt consectetur, nisi nisl aliquam enim, nec dictum enim enim nec enim. Suspendisse potenti. Nullam ac erat ante.",
                style: TextStyle(fontSize: 20, fontFamily: 'Monospace'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColorsLight.red
                  : AppColorsDark.red,
              alignment: Alignment.center,
              child: Text("Texto 3", style: lobsterStyle),
            ),
          ),
        ],
      ),
    );
  }
}
