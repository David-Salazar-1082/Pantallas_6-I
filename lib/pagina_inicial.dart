import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Fondo azul
          title: const Center(
            child: Text(
              'Pantalla 1',
              style: TextStyle(
                color: Colors.white, // Letra blanca
                fontSize: 20.0, // Tamaño de la letra 20
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla2');
                },
                child: const Text('Pantalla 2'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla3');
                },
                child: const Text('Pantalla 3'),
              ),
            ),
          ],
        ));
  }
}
