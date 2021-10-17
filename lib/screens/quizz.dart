import 'package:flutter/material.dart';
import 'dart:math';
import 'package:questionsapp/screens/question_list.dart';

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  _QuizzState createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  int score = 0;
  Color btnColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  bool isPressed = false;
  Color trueAnswer = Colors.green;
  Color falseAnswer = Colors.red;

  PageController _controller = PageController(initialPage: 0);

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      title: const Text("Score"),
      content: Text("Your score is: $score"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PageView.builder(
          controller: _controller,
          onPageChanged: (Page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Question ${index + 1}/${questions.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.black,
                  ),
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
                Expanded(
                  flex: 3,
                  child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: Container(
                      child: Image.asset(questions[index].image!),
                    ),
                  ),
                ),
                for (int i = 0; i < questions[index].answer!.length; i++)
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints.expand(),
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom: 10, left: 10, right: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: isPressed
                                ? questions[index]
                                        .answer!
                                        .entries
                                        .toList()[i]
                                        .value
                                    ? trueAnswer
                                    : falseAnswer
                                : btnColor,
                          ),
                          onPressed: isPressed
                              ? () {}
                              : () {
                                  setState(() {
                                    isPressed = true;
                                    if (questions[index]
                                            .answer!
                                            .entries
                                            .toList()[i]
                                            .value ==
                                        isPressed) {
                                      score = score + 10;
                                    }
                                  });
                                },
                          child: Text(
                            questions[index].answer!.keys.toList()[i],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                Expanded(
                    child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Container(
                      child: OutlinedButton(
                    onPressed: isPressed
                        ? index + 1 == questions.length
                            ? () {
                                showAlertDialog(context);
                              }
                            : () {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 750),
                                    curve: Curves.ease);
                              }
                        : null,
                    child: Text(
                      index + 1 == questions.length
                          ? "See Score"
                          : "Next Question",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}
