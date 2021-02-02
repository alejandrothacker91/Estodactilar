XML config;

int resX;
int resY;

int vpX;
int vpY;

float fps;

boolean fullScr=false;
int fullDisp;

boolean spouty=false;

int charSize;
int charSpace;
int wordSpace;
int lineSpace;

int marginX;
int marginY;

//

int maxLines;
int maxLetters;

//
PFont f;

boolean loadConfig() {

  config = loadXML("config.xml");

  if (config!=null) {

    fullScr=boolean(config.getInt("fullscreen", 0));

    fullDisp=config.getInt("fullDisp", 0);

    resX=config.getInt("resX", 100);
    resY=config.getInt("resY", 100);

    vpX=config.getInt("viewportX", 0);
    vpY=config.getInt("viewportY", 0);

    fps=config.getFloat("fps", 60.0);


    charSize=config.getInt("charSize", 20);

    charSpace=config.getInt("charSpace", 10);
    wordSpace=config.getInt("wordSpace", 50);
    lineSpace=config.getInt("lineSpace", 50);

    marginX=config.getInt("marginX", 100);
    marginY=config.getInt("marginY", 100);

    return false;
  } else {
    //deLog(err, cona, "Unable to load -config.xml- file. Program can't run without this. Please check documentation.");
    return true;
  }//end else
}

void calcConfig() {

  int safeX=width-2*marginX;
  println("Safe Width:  "+safeX);

  int safeY=height-2*marginY;
  println("Safe Height:  "+safeY);

  maxLines=floor(safeY/(charSize+lineSpace));
  println("Max Lines:  "+maxLines);

  maxLetters=floor(safeX/(charSize+charSpace));
  println("Max Letters:  "+maxLetters);
}

void winSetup() {
  if (!fullScr) {
    surface.setLocation(vpX, vpY);
  }

  surface.setResizable(false);
  surface.setTitle("Estodactilae");
  surface.setAlwaysOnTop(true);
  surface.setResizable(false);
  frameRate(fps);
}

void setupFont() {
  f = createFont("SourceCodePro-Regular.ttf", charSize, true);
  textFont(f);
  textAlign(CENTER, CENTER);
}
