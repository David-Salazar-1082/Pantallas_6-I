import 'package:flutter/material.dart';

//! AnimatedPhysicalModel

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget016State createState() => Widget016State();
}

class Widget016State extends State<PantallaCinco> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange, // Fondo naranja
        title: const Center(
          child: Text(
            'Pantalla 5',
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
                children: <Widget>[
                  AnimatedPhysicalModel(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    elevation: _isFlat ? 0 : 6.0,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: const SizedBox(
                      height: 120.0,
                      width: 120.0,
                      child: Icon(Icons.android_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text('Click'),
                    onPressed: () {
                      setState(() {
                        _isFlat = !_isFlat;
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
