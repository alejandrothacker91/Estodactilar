ArrayList<Line> Lines = new ArrayList<Line>();

void settings() {
  loadConfig();
  setWindow();
}

void setup() {
  winSetup();
  calcConfig();
  loadText();
}

void draw() {
  background(0);
  dispLines();
}

void setWindow() {
  if (fullScr) {
    fullScreen(P3D, fullDisp);
  } else {
    size(resX, resY, P3D);
  }
}

void loadText() {
  String[] rawLines = loadStrings("story.txt");
  for (int i=0; i<rawLines.length; i++) {
    Lines.add(new Line(marginX, marginY+i*(charSize+lineSpace), rawLines[i]));

    //println("Line " +i+ " added");
    //println(rawLines[i]);
  }

  //printArray(lines);
}

void dispLines() {
  for (int i=0; i<Lines.size(); i++) {
    Lines.get(i).display();
  }
}
