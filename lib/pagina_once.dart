import 'package:flutter/material.dart';

class Pantalla11 extends StatelessWidget {
  const Pantalla11({Key? key}) : super(key: key);

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
          mainAxisSize: MainAxisSize.min,
          children: [
            myWidget(),
            const SizedBox(height: 20),
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

Widget myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
