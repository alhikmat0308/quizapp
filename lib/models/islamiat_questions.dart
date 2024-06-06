class IslamiatQuestionsClass {
  final String IslamiatQuestion;
  final List<String> IslamiatOptions;
  final int IslamaitCorrectAnswerIndex;
  const IslamiatQuestionsClass({
    required this.IslamaitCorrectAnswerIndex,
    required this.IslamiatQuestion,
    required this.IslamiatOptions,
  });
}

const List<IslamiatQuestionsClass> IslamiatQuestions = [
  IslamiatQuestionsClass(
      IslamaitCorrectAnswerIndex: 1,
      IslamiatQuestion:
          'The Angel who delivered messages to Prophet Muhammad (PBUH) from Allah was?',
      IslamiatOptions: [
        ' Mikael (A.S)',
        'Jibrael (A.S)',
        ' Israfeel (A.S)',
        'Izraeel (A.S)'
      ]),
  IslamiatQuestionsClass(
    IslamaitCorrectAnswerIndex: 2,
    IslamiatQuestion: 'In which month do Muslims fast during Ramadan?',
    IslamiatOptions: ['Rajab', 'Shaban', 'Ramadan', 'Shawwal'],
  ),
  IslamiatQuestionsClass(
    IslamaitCorrectAnswerIndex: 2,
    IslamiatQuestion: 'What is the holy book of Islam?',
    IslamiatOptions: ['Torah', 'Bible', 'Quran', 'Gita'],
  ),
  IslamiatQuestionsClass(
      IslamaitCorrectAnswerIndex: 0,
      IslamiatQuestion: 'Which country is called the “Land of Prophets”?',
      IslamiatOptions: ['Palestine', 'Syria', 'Iraq', 'Saudi Arabia'])
];
