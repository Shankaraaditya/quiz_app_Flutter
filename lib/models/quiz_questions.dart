class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getshuffleList() {

    final shuffledList = List.of(answers); // to create a copy of list 
    shuffledList.shuffle();
    return shuffledList;
  }
}
