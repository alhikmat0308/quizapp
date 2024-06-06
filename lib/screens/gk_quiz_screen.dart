import 'package:flutter/material.dart';
import 'package:quizapp/models/gk_questions.dart';

import 'package:quizapp/screens/gk_result_screen.dart';
import 'package:quizapp/widgets/answer_card.dart';
import 'package:quizapp/widgets/next_button.dart';

class GkQuizScreen extends StatefulWidget {
  const GkQuizScreen({super.key});

  @override
  State<GkQuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<GkQuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;
  late bool isLastQuestion;

  @override
  void initState() {
    super.initState();
    updateIsLastQuestion();
  }

  void pickAnswer(int value) {
    setState(() {
      selectedAnswerIndex = value;
      final question = GkQuestions[questionIndex];
      if (selectedAnswerIndex == question.GkCorrectAnswerIndex) {
        score++;
      }
      updateIsLastQuestion();
    });
  }

  void updateIsLastQuestion() {
    isLastQuestion = questionIndex == GkQuestions.length - 1;
  }

  void gotoNextQuestion() {
    setState(() {
      if (questionIndex < GkQuestions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null;
        updateIsLastQuestion(); // Update isLastQuestion after each question
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = GkQuestions[questionIndex];
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.GkQuestion,
              style: TextStyle(fontSize: 21, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.GkOptions.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                      currentIndex: index,
                      question: question.GkOptions[index],
                      isSelected: selectedAnswerIndex == index,
                      selectedAnswerIndex: selectedAnswerIndex,
                      correctAnswerIndex: question.GkCorrectAnswerIndex),
                );
              },
            ),
            isLastQuestion
                ? next_button(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => GkResultScreen(
                            score: score,
                          ),
                        ),
                      );
                    },
                    lable: 'Finish')
                : next_button(
                    onPressed:
                        selectedAnswerIndex != null ? gotoNextQuestion : null,
                    lable: 'Next',
                  ),
          ],
        ),
      ),
    );
  }
}
