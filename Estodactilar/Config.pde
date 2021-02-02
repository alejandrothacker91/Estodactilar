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

    return false;
  } else {
    //deLog(err, cona, "Unable to load -config.xml- file. Program can't run without this. Please check documentation.");
    return true;
  }//end else
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
