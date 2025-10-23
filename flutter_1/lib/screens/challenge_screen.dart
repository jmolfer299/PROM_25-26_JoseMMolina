import 'package:flutter/material.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 3),
          ),
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: const Text(
            // 3. Se añade 'const' para optimización
            'H',
            style: TextStyle(
              fontSize: 50,
              color: Colors.blue,
              fontWeight: FontWeight.bold, 
            ),
          ),
        ),
      ),
    );
  }
}
