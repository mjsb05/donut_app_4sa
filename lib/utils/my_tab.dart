import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
        height: 50,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            //Borde redondeado
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
              //ruta de la imagen
              iconPath,
              color: Colors.grey[600]),
        ));
  }
}
