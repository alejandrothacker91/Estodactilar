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
    fullScreen(P3D, fullDisp);
  } else {
    size(resX, resY, P3D);
  }
}
