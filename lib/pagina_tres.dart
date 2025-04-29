import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Color gris para el AppBar
        title: const Text('Flutter Map'), // Título en el AppBar
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
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
