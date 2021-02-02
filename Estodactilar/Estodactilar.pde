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
    Lines.add(new Line(rawLines[i]));

    //println("Line " +i+ " added");
    //println(rawLines[i]);
  }

  //printArray(lines);
}
