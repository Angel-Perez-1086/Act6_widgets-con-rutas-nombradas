import 'package:flutter/material.dart';

class Pantalla8 extends StatefulWidget {
  const Pantalla8({Key? key}) : super(key: key);

  @override
  State<Pantalla8> createState() => _Pantalla8State();
}

class _Pantalla8State extends State<Pantalla8> {
  bool isShow = false;

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
          mainAxisSize: MainAxisSize.min, // Minimiza la altura
          children: [
            OutlinedButton(
              child: const Text('Click'),
              onPressed: () => setState(() {
                isShow = true;
              }),
            ),
            if (isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text('This is a card'),
                        TextButton(
                          child: const Text('Close'),
                          onPressed: () => setState(() {
                            isShow = false;
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 20), // Espacio antes del botón "Regresar"
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
