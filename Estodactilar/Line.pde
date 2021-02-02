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

    int charCount=0;
    for (int i=0; i<wordArray.length; i++) {
      Words.add(new Word(i, lineY, wordArray[i]));
    }
  }
  Line (int x, int y, String input) {
    lineX=x;
    lineY=y;

    wordArray=split(input, ' ');
    //printArray(wordArray);

    int charCount=0;

    for (int i=0; i<wordArray.length; i++) {
      Words.add(new Word(lineX+charCount*charSize, lineY, wordArray[i]));
      charCount+=wordArray[i].length();
    }
  }
  void display() {
    //ellipse(lineX, lineY, charSize, charSize);
    for (int i=0; i<Words.size(); i++) {
      Words.get(i).display();
    }
  }
} 
