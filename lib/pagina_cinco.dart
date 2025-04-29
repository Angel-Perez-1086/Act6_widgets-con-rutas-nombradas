import 'dart:ui';

import 'package:flutter/material.dart';

class Pantalla5 extends StatefulWidget {
  const Pantalla5({Key? key}) : super(key: key);

  @override
  State<Pantalla5> createState() => _Pantalla5State();
}

class _Pantalla5State extends State<Pantalla5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Color gris para el AppBar
        title: const Text('Flutter Map'), // Título en el AppBar
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Stack(
        children: <Widget>[
          Text(
            '0' * 10000,
            style: const TextStyle(
              color: Colors.green,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  color: Colors.black.withOpacity(
                      0.1), // Le agrego un leve color para resaltar el blur
                  child: const Text(
                    'Blur',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a Pantalla 1
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
