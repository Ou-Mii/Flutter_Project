import 'package:calculator/components/calculatrice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Calculatrice(title: 'Oumiis'),
    );
  }
}
/*color: Color.fromARGB(231, 248, 177, 228), */
/*const Color.fromARGB(255, 255, 95, 183), */