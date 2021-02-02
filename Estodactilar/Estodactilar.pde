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
  runLines();
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
    Lines.add(new Line(i, rawLines[i]));

    //println("Line " +i+ " added");
    //println(rawLines[i]);
  }

  //printArray(lines);
}

void runLines() {
  for (int i=0; i<Lines.size(); i++) {
    Lines.get(i).display();
  }
}
