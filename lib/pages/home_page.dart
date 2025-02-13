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
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ]),
        body: Column(
          children: [
            //1.Texto principal(Text),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 32)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      //tamaño de texto
                      fontSize: 32,
                      //Negritas
                      fontWeight: FontWeight.bold,
                      //subrayado
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
