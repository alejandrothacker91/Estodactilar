class Line {

  int lineX;
  int lineY;

  ArrayList<Word> Words = new ArrayList<Word>();
  String[] wordArray;

  Line (String input) {
    wordArray=split(input, ' ');
    //printArray(wordArray);

    for (int i=0; i<wordArray.length; i++) {
      Words.add(new Word(wordArray[i]));
    }
  }
  Line (int y, String input) {
    lineX=marginX;
    lineY=marginY+y*(charSize+lineSpace);

    wordArray=split(input, ' ');
    //printArray(wordArray);

    for (int i=0; i<wordArray.length; i++) {
      Words.add(new Word(wordArray[i]));
    }
  }
  void display() {
    ellipse(lineX, lineY, charSize, charSize);
  }
} 
