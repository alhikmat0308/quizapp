class QuetionModel {
  final String question;
  final List<String> options;
  final int correctanswerindex;
  const QuetionModel({
    required this.correctanswerindex,
    required this.question,
    required this.options,
  });
}

const List<QuetionModel> questions = [
  QuetionModel(
    correctanswerindex: 1,
    question: 'What is the capital of Franc ?',
    options: ['Lodon', 'Paris', 'New Yark', 'Dehli'],
  ),
  QuetionModel(
    correctanswerindex: 3,
    question: 'How many planets in solar system ?',
    options: ['2', '3', '5 ', '7'],
  ),
  QuetionModel(
    correctanswerindex: 1,
    question: 'What is the primary color ?',
    options: ['Purple', 'Red', 'Black', 'Brown'],
  ),
  QuetionModel(
    correctanswerindex: 2,
    question: 'What is the hardest substance ?',
    options: ['Nikkle', 'Gold', 'Diamond', 'Silver'],
  ),
  QuetionModel(
    correctanswerindex: 3,
    question: 'What is not liquid ?',
    options: ['Oil', 'Water', 'Milk', 'Fire'],
  ),
];
