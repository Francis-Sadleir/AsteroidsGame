Spaceship myShip;
Asteroid myAsteroid;
ArrayList <GameObject> myObjects;
boolean wkey, akey, skey, dkey, spacekey;

void game() {
  wkey = akey = skey = dkey = false;
  myShip = new Spaceship();

  myObjects = new ArrayList <GameObject>();

  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
  myObjects.add (new Asteroid());
}



void gameAct() {

  myShip.show();
  myShip.act();
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


void gameShow() {

}
void gameClicks() {
}
