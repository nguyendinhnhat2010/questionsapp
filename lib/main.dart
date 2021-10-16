import 'package:flutter/material.dart';
import 'package:questionsapp/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Questions App",
      theme: ThemeData.dark(),
      home: const WelcomeScreen(),
    );
  }
}
