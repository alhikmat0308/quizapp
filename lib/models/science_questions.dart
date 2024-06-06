class ScienceQuestionsClass {
  final String ScienceQuestion;
  final List<String> ScienceOptions;
  final int ScienceCorrectAnswerIndex;

  const ScienceQuestionsClass({
    required this.ScienceQuestion,
    required this.ScienceOptions,
    required this.ScienceCorrectAnswerIndex,
  });
}

const List<ScienceQuestionsClass> ScienceQuestions = [
  ScienceQuestionsClass(
      ScienceQuestion: 'Which is the outermost planet in the solar system?',
      ScienceOptions: ['Mercury', 'Pluto', 'Neptune', 'Uranus'],
      ScienceCorrectAnswerIndex: 2),
  ScienceQuestionsClass(
      ScienceQuestion: 'The lifespan of Red Blood Cells is days?',
      ScienceOptions: ['60', '30', '40', '120'],
      ScienceCorrectAnswerIndex: 3),
  ScienceQuestionsClass(
      ScienceQuestion: 'What is the unit of pressur?',
      ScienceOptions: ['pascal', 'tesla', 'joule', 'volt'],
      ScienceCorrectAnswerIndex: 0)
];
