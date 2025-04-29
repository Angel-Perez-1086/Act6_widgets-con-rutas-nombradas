import 'dart:ui';
import 'package:flutter/material.dart';

class Pantalla6 extends StatefulWidget {
  const Pantalla6({Key? key}) : super(key: key);

  @override
  State<Pantalla6> createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Color gris para el AppBar
        title: const Text('Flutter Map'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Minimiza altura de la columna
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: ClipRect(
                child: Banner(
                  message: "25% off",
                  location: BannerLocation.topEnd,
                  color: Colors.red,
                  child: Container(
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.network(
                            'https://tinyurl.com/5n8ywvw3',
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Flutter Course (Beginners)',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent),
                                child: const Text('Get now'),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
