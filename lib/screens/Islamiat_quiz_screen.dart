import 'package:flutter/material.dart';

import 'package:quizapp/models/islamiat_questions.dart';
import 'package:quizapp/screens/Islamait_result_screen.dart';
import 'package:quizapp/widgets/answer_card.dart';
import 'package:quizapp/widgets/next_button.dart';

class IslamiatQuizScreen extends StatefulWidget {
  const IslamiatQuizScreen({super.key});

  @override
  State<IslamiatQuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<IslamiatQuizScreen> {
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
      final question = IslamiatQuestions[questionIndex];
      if (selectedAnswerIndex == question.IslamaitCorrectAnswerIndex) {
        score++;
      }
      updateIsLastQuestion();
    });
  }

  void updateIsLastQuestion() {
    isLastQuestion = questionIndex == IslamiatQuestions.length - 1;
  }

  void gotoNextQuestion() {
    setState(() {
      if (questionIndex < IslamiatQuestions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null;
        updateIsLastQuestion(); // Update isLastQuestion after each question
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = IslamiatQuestions[questionIndex];
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                question.IslamiatQuestion,
                style: TextStyle(fontSize: 21, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: question.IslamiatOptions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: selectedAnswerIndex == null
                        ? () => pickAnswer(index)
                        : null,
                    child: AnswerCard(
                        currentIndex: index,
                        question: question.IslamiatOptions[index],
                        isSelected: selectedAnswerIndex == index,
                        selectedAnswerIndex: selectedAnswerIndex,
                        correctAnswerIndex:
                            question.IslamaitCorrectAnswerIndex),
                  );
                },
              ),
              isLastQuestion
                  ? next_button(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => IslamiatResultScreen(
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
      ),
    );
  }
}
