import 'package:flutter/material.dart';
import 'package:questionsapp/screens/quizz.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Xin chào mọi người !",
              style: TextStyle(fontSize: 30, color: Colors.teal),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            const Text(
              "Mọi người đã sẵn sàng chưa !",
              style: TextStyle(fontSize: 18, color: Colors.tealAccent),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0XFF14B8A6),
                          Color(0xFF5EEAD4),
                          Color(0xFFCCFBF1)
                        ]),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Quizz()),
                      );
                    },
                    child: const Text(
                      "Let's Start",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
