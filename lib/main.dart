import 'package:flutter/material.dart';
import 'package:vegetables/widgets/screens/home_screen.dart';
import 'package:vegetables/widgets/screens/vegetables_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/vegetables': (context) => const VegetablesScreen(),
      },
    );
  }
}
