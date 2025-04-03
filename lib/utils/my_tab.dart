import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String products;
  const MyTab({super.key, required this.iconPath, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tab(
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
            )),
        const SizedBox(
          height: 2,
        ),
        Text(products, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }
}
