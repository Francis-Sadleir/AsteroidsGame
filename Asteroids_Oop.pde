int mode;

final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;



void setup() {
  size (800, 800);
  background(0);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = GAME;
}

void draw() {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println ("ERROR! Mode is " + mode);
  }
}
