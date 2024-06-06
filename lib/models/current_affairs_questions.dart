class CurrentAffairsQuestions {
  final String CurrentQuestion;
  final List<String> CurrentOptions;
  final int CurrentCorrectAnswerIndex;

  const CurrentAffairsQuestions({
    required this.CurrentQuestion,
    required this.CurrentOptions,
    required this.CurrentCorrectAnswerIndex,
  });
}

const List<CurrentAffairsQuestions> CurrentQuestions = [
  CurrentAffairsQuestions(
      CurrentQuestion:
          'Who is the Current Chief Selector of Pakistan Cricket Team?',
      CurrentOptions: [
        'Shahid Afridi',
        'Wahab Riaz',
        'Wasim Akram',
        'Inzmam ul Haque'
      ],
      CurrentCorrectAnswerIndex: 3),
  CurrentAffairsQuestions(
      CurrentQuestion:
          'Who Is The Current Chief Election Commissioner Of Pakistan?',
      CurrentOptions: [
        'FM Khan',
        'Sardar Muhammad Raza Khan',
        'Sikandar Sultan Raja',
        'Altaf Ibrahim Qureshi'
      ],
      CurrentCorrectAnswerIndex: 2),
  CurrentAffairsQuestions(
      CurrentQuestion:
          'Who is the Current Chief of the Naval Staff of Pakistan Navy?',
      CurrentOptions: [
        'Admiral Syed Arifullah Hussaini',
        'Admiral Amjad Khan Niazi',
        'Admiral Naveed Ashraf',
        'Admiral Zafar Mahmood Abbasi'
      ],
      CurrentCorrectAnswerIndex: 3)
];
