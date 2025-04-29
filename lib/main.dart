import 'package:flutter/material.dart';
import 'package:munozrutas/pagina_inicial.dart';
import 'package:munozrutas/pagina_dos.dart';
import 'package:munozrutas/pagina_tres.dart';
import 'package:munozrutas/pagina_cuatro.dart';
import 'package:munozrutas/pagina_cinco.dart';
import 'package:munozrutas/pagina_seis.dart';
import 'package:munozrutas/pagina_siete.dart';

void main() => runApp(MiRuta());

class MiRuta extends StatelessWidget {
  const MiRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre pagina',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
