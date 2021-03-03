import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poki_app/input_controller.dart';

void main() {
  runApp(PokiApp());
}

class PokiApp extends StatefulWidget {
  @override
  _PokiAppState createState() => _PokiAppState();
}

class _PokiAppState extends State<PokiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatelessWidget {
  final inputController = InputController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poki App'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(onChanged: (text) => inputController.input = text),
            StreamBuilder(
              stream: inputController.text,
              builder: (context, snapshot) => Text('${snapshot.data}'),
            ),
            StreamBuilder(
              stream: inputController.text,
              builder: (context, snapshot) => Text('${snapshot.data}'),
            ),
            StreamBuilder(
              stream: inputController.text,
              builder: (context, snapshot) => Text('${snapshot.data}'),
            ),
            StreamBuilder(
              stream: inputController.text,
              builder: (context, snapshot) => Text('${snapshot.data}'),
            ),
          ],
        ),
      ),
    );
  }
}
