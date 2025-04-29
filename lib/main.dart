import 'package:flutter/material.dart';
import 'package:perez/pagina_cuatro.dart';
import 'package:perez/pagina_inicial.dart';
import 'package:perez/pagina_dos.dart';
import 'package:perez/pagina_tres.dart';
import 'package:perez/pagina_cinco.dart';
import 'package:perez/pagina_seis.dart';
import 'package:perez/pagina_siete.dart';
import 'package:perez/pagina_ocho.dart';
import 'package:perez/pagina_nueve.dart';
import 'package:perez/pagina_diez.dart';
import 'package:perez/pagina_once.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
        '/pantalla7': (context) => const Pantalla7(),
        '/pantalla8': (context) => const Pantalla8(),
        '/pantalla9': (context) => const Pantalla9(),
        '/pantalla10': (context) => const Pantalla10(),
        '/pantalla11': (context) => const Pantalla11(),
      },
    );
  }
}
