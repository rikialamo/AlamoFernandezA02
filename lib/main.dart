import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class Boton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  const Boton({required this.texto, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[800],
      ),
      child: Text(texto),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print('Contador incrementado: $_counter');
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      print('Contador reseteado a $_counter');
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      print('Contador decrementado: $_counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Text(
            'CONTADOR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            width: 200.0,
            height: 200.0,
            child: Center(
              child: Text(
                '$_counter',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 130.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 186.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Boton(
                texto: '+',
                onPressed: _incrementCounter,
              ),
              Boton(
                texto: 'RESET',
                onPressed: _resetCounter,
              ),
              Boton(
                texto: '-',
                onPressed: _decrementCounter,
              ),
            ],
          ),
          Text(
            'By Ricardo Álamo',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
