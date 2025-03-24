class QuizQuest{
   const QuizQuest(this.quests, this.answers);

   final String quests;
   final List<String> answers;

   List<String> getshuffledanswer(){
     // List.of(answers).shuffle();
      //** the reason the above line of code wasn't used is because shuffle doesn't return anything
      // so we had to save the values in a variable..
      // the "of" constructor function basically just duplicates an exsisting function
      // the shuffle is a special dart list method used to shuffle a list but the prob
      // with it is that it duplicates the recipient list...
      final shuffledList = List.of(answers);
      shuffledList.shuffle();
      return shuffledList;
   }
}