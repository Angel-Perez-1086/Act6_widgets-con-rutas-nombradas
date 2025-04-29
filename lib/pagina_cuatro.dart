import 'package:flutter/material.dart';

class Pantalla4 extends StatefulWidget {
  const Pantalla4({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  State<Pantalla4> createState() => _Pantalla4State();
}

class _Pantalla4State extends State<Pantalla4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Color gris para el AppBar
        title: const Text('Autocomplete Demo'),
        centerTitle: true, // Centra el título en el AppBar
      ),
      // Le agrego un Scaffold para que sea una pantalla complet
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return Pantalla4.listItems.where((String item) {
                  return item
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String item) {
                debugPrint('The item $item was selected');
              },
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
