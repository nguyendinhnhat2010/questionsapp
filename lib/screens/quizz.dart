import 'package:flutter/material.dart';
import 'dart:math';

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int counter = 10;
  int score = 0;
  final random = Random();

  List<String> listImage = [];
  List<String> optionsPig = [];
  List<String> optionsBird = [];
  List<String> optionsCat = [];
  List<String> optionsDinasour = [];
  List<String> optionsElephant = [];
  List<String> optionsGoat = [];
  List<String> optionsLion = [];
  List<String> optionsMonkey = [];
  List<String> optionsTiger = [];
  List<String> optionsZebra = [];
  String text = "";
  @override
  void initState() {
    listImage = [
      "assets/images/pig.png",
      "assets/images/bird.png",
      "assets/images/cat.png",
      "assets/images/dinasour.png",
      "assets/images/elephant.png",
      "assets/images/goat.png",
      "assets/images/lion.png",
      "assets/images/monkey.png",
      "assets/images/tiger.png",
      "assets/images/zebra.png"
    ];
    optionsPig = ["Dog", "Pig", "Cat", "Monkey"];
    optionsBird = ["Dog", "Pig", "Bird", "Monkey"];
    optionsCat = ["Dog", "Cat", "Dinasour", "Monkey"];
    optionsDinasour = ["Dinasour", "Pig", "Cat", "Monkey"];
    optionsElephant = ["Dog", "Pig", "Cat", "Elephant"];
    optionsGoat = ["Dog", "Pig", "Goat", "Monkey"];
    optionsLion = ["Dog", "Lion", "Cat", "Monkey"];
    optionsMonkey = ["Dog", "Pig", "Cat", "Monkey"];
    optionsTiger = ["Tiger", "Pig", "Cat", "Monkey"];
    optionsZebra = ["Dog", "Zebra", "Cat", "Monkey"];
    text = optionsBird.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        title: const Center(
          child: Text("Flutter Interacitivy"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Time: " + counter.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Score: " + score.toString(),
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset(listImage[0]),
                ),
              ],
            ),
            for (int i = 0; i < 4; i++)
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.primaries[
                                random.nextInt(Colors.primaries.length)]
                            [random.nextInt(9) * 100],
                      ),
                      onPressed: () {},
                      child: Text(
                        optionsPig[i],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
