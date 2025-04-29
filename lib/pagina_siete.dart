import 'package:flutter/material.dart';

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange, // Fondo naranja
        title: const Center(
          child: Text(
            'Pantalla 7', // Título de la pantalla
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return listItems.where((String item) {
                  return item.toLowerCase().contains(
                        textEditingValue.text.toLowerCase(),
                      );
                });
              },
              onSelected: (String item) {
                print('Se seleccionó: $item');
              },
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
