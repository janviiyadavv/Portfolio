import 'package:flutter/material.dart';
import 'homepage.dart';
import 'about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      // ignore: unnecessary_new
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 65, 64, 64)),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(),
        'about': (context) => const AboutPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

