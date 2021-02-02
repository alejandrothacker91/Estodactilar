class Line {
  ArrayList<Word> Words = new ArrayList<Word>();
  String[] wordArray;

  Line (String input) {
    wordArray=split(input, ' ');
    //printArray(wordArray);

    for (int i=0; i<wordArray.length; i++) {
      Words.add(new Word(""));
    }
  }
  void update() {
  }
} 
