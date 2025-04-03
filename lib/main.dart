import 'package:donut_app_4sa/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/utils/services/cart_services.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CartService(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.purple,
        ),
      ),
      home: const HomePage(),
    );
  }
}
