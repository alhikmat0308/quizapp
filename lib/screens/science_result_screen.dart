import 'package:flutter/material.dart';

import 'package:quizapp/models/science_questions.dart';

import 'package:quizapp/screens/catlog_screen.dart';
import 'package:quizapp/widgets/next_button.dart';

class ScienceResultScreen extends StatelessWidget {
  const ScienceResultScreen({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Your Score",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 100,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: CircularProgressIndicator(
                      strokeWidth: 12,
                      value: score / ScienceQuestions.length,
                      color: Colors.lightGreen,
                      backgroundColor: Colors.white),
                ),
                Column(
                  children: [
                    Text(
                      score.toString() +
                          "/" +
                          ScienceQuestions.length.toString(),
                      style: TextStyle(fontSize: 80, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${(score / ScienceQuestions.length * 100.round())}%',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            next_button(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Categories(),
                    ),
                  );
                },
                lable: 'Restart')
          ],
        ),
      ),
    );
  }
}
