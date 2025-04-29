import 'package:flutter/material.dart';

//! AnimatedSwitcher

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _Widget020State();
}

class _Widget020State extends State<PantallaSeis> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange, // Fondo naranja
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: Text(
                      '$_count',
                      style: const TextStyle(fontSize: 40),
                      key: ValueKey(_count),
                    ),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('Add'),
                    onPressed: () {
                      setState(() {
                        _count += 1;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla1');
                },
                child: const Text('Ir a Pantalla 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
