class Letter {

  int letX;
  int letY;

  char acter;

  Letter (char input) {
    acter=input;
    //print(acter);
  }
  Letter (int x, int y, char input) {
    letX=x;
    letY=y;

    acter=input;
    flock.addBoid(new Boid(x, y, acter));
  }
  void display() {
  }
  void display0() {
    pushMatrix();
    translate(letX, letY, 0);
    text(acter, 0, 0, 0);
    popMatrix();
  }
} 
