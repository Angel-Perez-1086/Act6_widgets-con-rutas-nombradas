import 'package:flutter/material.dart';

class Pantalla9 extends StatefulWidget {
  const Pantalla9({Key? key}) : super(key: key);

  @override
  State<Pantalla9> createState() => _Pantalla9State();
}

class _Pantalla9State extends State<Pantalla9> {
  int _currentIndex = 0;

  List<Widget> body = const [
    Icon(Icons.home, size: 100),
    Icon(Icons.menu, size: 100),
    Icon(Icons.person, size: 100),
  ];

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
          mainAxisSize: MainAxisSize.min, // Ajusta a contenido
          children: [
            body[_currentIndex],
            const SizedBox(height: 20), // Espacio antes del botón
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a la pantalla anterior
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
