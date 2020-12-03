Spaceship myShip;
Asteroid myAsteroid;
ArrayList <GameObject> myObjects;
boolean wkey, akey, skey, dkey, spacekey;

int mode;

final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;



void setup() {
  size (800, 800);
  myShip = new Spaceship();
  mode = INTRO;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  wkey = akey = skey = dkey = false;

  myObjects = new ArrayList <GameObject>();

  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
}

void draw() {

  background(0);
  myShip.show();
  myShip.act();
  
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
 
  int i = 0;
  while ( i < myObjects.size()  ) {

    GameObject obj= myObjects.get(i);
    if (obj.hp > 0) {
      obj.act();
      obj.show();
      i++;
    } else {
      myObjects.remove(i);
    }
  }
}
