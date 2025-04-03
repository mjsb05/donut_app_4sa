import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final dynamic donutColor;
  final String donutPrice;
  final String donutFlavor;
  final String imageName;
  final String donutStore;

  const DonutTile(
      {super.key,
      required this.imageName,
      required this.donutColor,
      required this.donutPrice,
      required this.donutFlavor,
      required this.donutStore});

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
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                child: Image.asset(imageName),
              ),
              Text(donutFlavor,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              Text(donutStore,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: donutColor[800])),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined,
                          color: donutColor[800])),
                  TextButton(
                      onPressed: () {},
                      child: Text("ADD",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: donutColor[800],
                              decoration: TextDecoration.underline))),
                ],
              )
            ],
          )),
    );
  }
}
