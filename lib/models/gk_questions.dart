class GkQuestionsClass {
  final String GkQuestion;
  final List<String> GkOptions;
  final int GkCorrectAnswerIndex;

  const GkQuestionsClass({
    required this.GkQuestion,
    required this.GkOptions,
    required this.GkCorrectAnswerIndex,
  });
}

const List<GkQuestionsClass> GkQuestions = [
  GkQuestionsClass(
      GkQuestion: 'When you transport something by Ship, it’s called',
      GkOptions: ['Consignment', 'Cargo', 'Shipment', 'Transportation'],
      GkCorrectAnswerIndex: 1),
  GkQuestionsClass(
      GkQuestion: 'The Oldest University in the World ',
      GkOptions: [
        'Cambridge University',
        'Oxford University',
        'University of Bologna',
        'University of Warwick'
      ],
      GkCorrectAnswerIndex: 2),
  GkQuestionsClass(
      GkQuestion: 'Gashoo lake is located in',
      GkOptions: [
        'Punjab',
        'Khyber Pakhtunkhwa',
        'Kashmir',
        'Gilgit Baltistan'
      ],
      GkCorrectAnswerIndex: 3)
];
