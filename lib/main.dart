import 'dart:math';

import 'package:flutter/material.dart';

main() {
  runApp(const PaginaInicial());
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  Sorteador createState() {
    return Sorteador();
  }
}

// ignore: must_be_immutable
class Sorteador extends State {
  var numero = 0;

  void _sortear() {
    setState(() {
      numero = 1 + Random().nextInt(10 - 1);
    });
  }

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Color.fromARGB(255, 82, 19, 184));
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Sortedor de numero')),
          body: Center(
              child: Column(children: [
            const Text(
              'numero sorteado',
              style: TextStyle(fontSize: 20),
            ),
            Visibility(
              visible: numero != 0,
              replacement: const Text('Aperte para sortear'),
              child: Text(
                '$numero',
                style: const TextStyle(color: Color(0xFFFF4800)),
              ),
            ),
            OutlinedButton(
                child: const Text(
                  'Rodar',
                  style: textStyle,
                ),
                onPressed: () {
                  _sortear();
                }),
          ]))),
    );
  }
}
