import 'package:flutter/material.dart';
import '../drawer_menu.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _conteo = 0;

  void _aumentar() {
    setState(() {
      _conteo++;
    });
  }

  void _reducir() {
    setState(() {
      _conteo--;
    });
  }

  void _limpiar() {
    setState(() {
      _conteo = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: const Center(child: Text('Contador de Pulsaciones')),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Has pulsado el botón:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                '$_conteo ${(_conteo == 1) ? 'vez' : 'veces'}',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _limpiar,
            tooltip: "Reiniciar contador",
            backgroundColor: Colors.orange,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: _aumentar,
            tooltip: "Aumentar contador",
            backgroundColor: Colors.teal,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _reducir,
            tooltip: "Reducir contador",
            backgroundColor: const Color.fromARGB(255, 179, 62, 80),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
