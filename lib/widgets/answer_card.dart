import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;
  final int currentIndex;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    bool iscorrectAnswer = currentIndex == correctAnswerIndex;
    bool iswrongAnswer = !iscorrectAnswer && isSelected;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: selectedAnswerIndex != null
            ? Container(
                height: 70,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 2,
                    color: iscorrectAnswer
                        ? Colors.green
                        : iswrongAnswer
                            ? Colors.red
                            : Colors.white,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        question,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    iscorrectAnswer
                        ? buildCorrectIcon()
                        : iswrongAnswer
                            ? buildWrongIcon()
                            : SizedBox.shrink(),
                  ],
                ),
              )
            : Container(
                height: 70,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.white)),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(question),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}

Widget buildCorrectIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.green,
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    );

Widget buildWrongIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.red,
      child: Icon(
        Icons.close,
        color: Colors.white,
      ),
    );
