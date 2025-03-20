import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final dynamic donutColor;
  final String donutPrice;
  final String donutFlavor;
  final String imageName;

  const DonutTile(
      {super.key,
      required this.imageName,
      required this.donutColor,
      required this.donutPrice,
      required this.donutFlavor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          //color: donutColor[50],
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), //esquinas redondeadas
            color: donutColor[50],
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: donutColor[100],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$donutPrice",
                      style: TextStyle(
                          color: donutColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                )
              ])
            ],
          )),
    );
  }
}
