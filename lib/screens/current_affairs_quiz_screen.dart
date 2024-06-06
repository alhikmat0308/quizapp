import 'package:flutter/material.dart';
import 'package:quizapp/models/current_affairs_questions.dart';

import 'package:quizapp/screens/current_affairs_result_screen.dart';
import 'package:quizapp/widgets/answer_card.dart';
import 'package:quizapp/widgets/next_button.dart';

class CurrentQuizScreen extends StatefulWidget {
  const CurrentQuizScreen({super.key});

  @override
  State<CurrentQuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<CurrentQuizScreen> {
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
      final question = CurrentQuestions[questionIndex];
      if (selectedAnswerIndex == question.CurrentCorrectAnswerIndex) {
        score++;
      }
      updateIsLastQuestion();
    });
  }

  void updateIsLastQuestion() {
    isLastQuestion = questionIndex == CurrentQuestions.length - 1;
  }

  void gotoNextQuestion() {
    setState(() {
      if (questionIndex < CurrentQuestions.length - 1) {
        questionIndex++;
        selectedAnswerIndex = null;
        updateIsLastQuestion(); // Update isLastQuestion after each question
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = CurrentQuestions[questionIndex];
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
                question.CurrentQuestion,
                style: TextStyle(fontSize: 21, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: question.CurrentOptions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: selectedAnswerIndex == null
                        ? () => pickAnswer(index)
                        : null,
                    child: AnswerCard(
                        currentIndex: index,
                        question: question.CurrentOptions[index],
                        isSelected: selectedAnswerIndex == index,
                        selectedAnswerIndex: selectedAnswerIndex,
                        correctAnswerIndex: question.CurrentCorrectAnswerIndex),
                  );
                },
              ),
              isLastQuestion
                  ? next_button(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => CurrentResultScreen(
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
