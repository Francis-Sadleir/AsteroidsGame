class Bullet extends GameObject {

  int timer;

  Bullet() {
    location = new PVector (myShip.location.x, myShip.location.y);
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(5);
    timer = 100;
    size = 10;
    hp = 1;
  }

  void show() {
    strokeWeight(2);
    stroke(255);
    ellipse(location.x, location.y, size, size);
  }
  void act() {
    super.act();

    timer --;
    if (timer == 0) {
      hp = 0;
    }

    if (location.x < 2.5) {
      hp = 0;
    }
    if (location.y < -2.5) {
      hp = 0;
    }
    if (location.x > 802.5) {
      hp = 0;
    }
    if (location.y > 802.5) {
      hp = 0;
    }
  }
}
