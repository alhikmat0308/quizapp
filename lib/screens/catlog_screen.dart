import 'package:flutter/material.dart';
import 'package:quizapp/screens/Islamiat_quiz_screen.dart';
import 'package:quizapp/screens/current_affairs_quiz_screen.dart';
import 'package:quizapp/screens/gk_quiz_screen.dart';
import 'package:quizapp/screens/science_quiz_screen.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Chose Your Subject"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IslamiatQuizScreen()),
                    );
                  },
                  child: Text("Islamiat"),
                  style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScienceQuizScreen()),
                    );
                  },
                  child: Text("Science"),
                  style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GkQuizScreen()),
                    );
                  },
                  child: Text("General Knowledge"),
                  style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CurrentQuizScreen()),
                    );
                  },
                  child: Text("Current Affiars"),
                  style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
