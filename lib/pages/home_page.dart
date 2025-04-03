import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png'),
    const MyTab(iconPath: 'lib/icons/burger.png'),
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
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
              ),
              //2. Pestañas
              TabBar(tabs: myTabs),

              //3. Contenido de las pestañas
              Expanded(
                child: TabBarView(children: [
                  //Contenido de la pestaña 1
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PanCakesTab(),
                  PizzaTab(),
                ]),
              ),
              ShoppingCart()
            ],
          )),
    );
  }
}
