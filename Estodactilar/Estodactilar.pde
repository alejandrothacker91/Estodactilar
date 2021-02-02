ArrayList<Line> Lines = new ArrayList<Line>();
Flock flock;

float freedom=1.0;

void settings() {
  loadConfig();
  setWindow();
}

void setup() {

  flock = new Flock();
  winSetup();
  calcConfig();
  setupFont();
  loadText();
}

void draw() {
  updateFreedom();
  background(0);
  dispLines();
  flock.run();
}

void updateFreedom() {
  freedom=map(mouseX, marginX, width-marginX, 0.0, 1.0);
  freedom=constrain(freedom, 0.0, 1.0);
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
