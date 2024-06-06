class AllQuestionsClass {
  final String Question;
  final List<String> Options;
  final int CorrectAnswerIndex;

  const AllQuestionsClass({
    required this.Question,
    required this.Options,
    required this.CorrectAnswerIndex,
  });
}

//////////////////     GK List ///////////////////////
const List<AllQuestionsClass> GkQuestions = [
  AllQuestionsClass(
      Question: 'When you transport something by Ship, it’s called',
      Options: ['Consignment', 'Cargo', 'Shipment', 'Transportation'],
      CorrectAnswerIndex: 1),
  AllQuestionsClass(
      Question: 'The Oldest University in the World ',
      Options: [
        'Cambridge University',
        'Oxford University',
        'University of Bologna',
        'University of Warwick'
      ],
      CorrectAnswerIndex: 2),
  AllQuestionsClass(
      Question: 'Gashoo lake is located in',
      Options: ['Punjab', 'Khyber Pakhtunkhwa', 'Kashmir', 'Gilgit Baltistan'],
      CorrectAnswerIndex: 3)
];

///////////////////////  Current List    /////////////////////

const List<AllQuestionsClass> CurrentQuestions = [
  AllQuestionsClass(
      Question: 'Who is the Current Chief Selector of Pakistan Cricket Team?',
      Options: [
        'Shahid Afridi',
        'Wahab Riaz',
        'Wasim Akram',
        'Inzmam ul Haque'
      ],
      CorrectAnswerIndex: 3),
  AllQuestionsClass(
      Question: 'Who Is The Current Chief Election Commissioner Of Pakistan?',
      Options: [
        'FM Khan',
        'Sardar Muhammad Raza Khan',
        'Sikandar Sultan Raja',
        'Altaf Ibrahim Qureshi'
      ],
      CorrectAnswerIndex: 2),
  AllQuestionsClass(
      Question: 'Who is the Current Chief of the Naval Staff of Pakistan Navy?',
      Options: [
        'Admiral Syed Arifullah Hussaini',
        'Admiral Amjad Khan Niazi',
        'Admiral Naveed Ashraf',
        'Admiral Zafar Mahmood Abbasi'
      ],
      CorrectAnswerIndex: 3)
];

//////////////////     Islamiat List ///////////////////////

const List<AllQuestionsClass> IslamiatQuestions = [
  AllQuestionsClass(
      CorrectAnswerIndex: 1,
      Question:
          'The Angel who delivered messages to Prophet Muhammad (PBUH) from Allah was?',
      Options: [
        ' Mikael (A.S)',
        'Jibrael (A.S)',
        ' Israfeel (A.S)',
        'Izraeel (A.S)'
      ]),
  AllQuestionsClass(
    CorrectAnswerIndex: 2,
    Question: 'In which month do Muslims fast during Ramadan?',
    Options: ['Rajab', 'Shaban', 'Ramadan', 'Shawwal'],
  ),
  AllQuestionsClass(
    CorrectAnswerIndex: 2,
    Question: 'What is the holy book of Islam?',
    Options: ['Torah', 'Bible', 'Quran', 'Gita'],
  ),
  AllQuestionsClass(
      CorrectAnswerIndex: 0,
      Question: 'Which country is called the “Land of Prophets”?',
      Options: ['Palestine', 'Syria', 'Iraq', 'Saudi Arabia'])
];

////////////////////////    Science List     ///////////////////////////

const List<AllQuestionsClass> ScienceQuestions = [
  AllQuestionsClass(
      Question: 'Which is the outermost planet in the solar system?',
      Options: ['Mercury', 'Pluto', 'Neptune', 'Uranus'],
      CorrectAnswerIndex: 2),
  AllQuestionsClass(
      Question: 'The lifespan of Red Blood Cells is days?',
      Options: ['60', '30', '40', '120'],
      CorrectAnswerIndex: 3),
  AllQuestionsClass(
      Question: 'What is the unit of pressur?',
      Options: ['pascal', 'tesla', 'joule', 'volt'],
      CorrectAnswerIndex: 0)
];
