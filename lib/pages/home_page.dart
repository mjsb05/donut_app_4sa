import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold es un widget que implementa la estructura visual básica de material design
      appBar: AppBar(
          //AppBar es un widget que implementa la parte superior de la aplicación
          backgroundColor: Colors.transparent,
          //icóno de la izquierda
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [Icon(Icons.person)]),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
