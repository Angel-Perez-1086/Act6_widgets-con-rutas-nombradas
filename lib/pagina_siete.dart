import 'package:flutter/material.dart';

class Pantalla7 extends StatefulWidget {
  const Pantalla7({Key? key}) : super(key: key);

  @override
  State<Pantalla7> createState() => _Pantalla7State();
}

class _Pantalla7State extends State<Pantalla7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Flutter Map'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
              child: const Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(size: 50),
              ),
            ),
            const SizedBox(height: 20), // Espacio entre contenedor y botón
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a la pantalla anterior
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
