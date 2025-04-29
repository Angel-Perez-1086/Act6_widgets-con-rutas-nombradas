import 'package:flutter/material.dart';

class Pantalla10 extends StatefulWidget {
  const Pantalla10({Key? key}) : super(key: key);

  @override
  State<Pantalla10> createState() => _Pantalla10State();
}

class _Pantalla10State extends State<Pantalla10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Color gris para el AppBar
        title: const Text('Flutter Map'), // Título en el AppBar
        centerTitle: true, // Centra el título en el AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers the content vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centers the content horizontally
          children: [
            ElevatedButton(
              child: const Text('Modal Bottom Sheet'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.pop(context); // Close the bottom sheet
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
                height:
                    20), // Add space between the button and "Regresar" button
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
