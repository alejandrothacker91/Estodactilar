void settings() {
  loadConfig();
  setWindow();
}

void setup() {
  winSetup();
}

void draw() {
  background(0);
}

void setWindow() {
  if (fullScr) {
    fullScreen();
  } else {
    size(resX, resY);
  }
}
