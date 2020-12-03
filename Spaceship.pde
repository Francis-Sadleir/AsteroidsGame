class Spaceship extends GameObject {

  //1. instance variables
  PVector direction;
  int shotTimer, threshold;
  //2. constructors
  Spaceship() {

    location = new PVector (width/2, height/2);
    velocity = new PVector (0, 0);
    direction = new PVector (0, -0.1);
    hp = 3;
    size = 50;
    shotTimer = 0;
    threshold = 20;
  }

  //3. behaviour functions
  void show() {
    pushMatrix();
    strokeWeight(2);
    stroke(255);
    fill(0);
    translate(location.x, location.y);
    rotate(direction.heading());
    triangle(-30, -20, -30, 20, 30, 0);
    //rect (0, 0, size, size);
    popMatrix();
  }

  void act() {
    super.act();

    shotTimer++;

    if (akey) direction.rotate(-radians(5));
    if (dkey) direction.rotate(radians(5));
    if (wkey) {
      velocity.add(direction);
      myObjects.add(new Fire());
    } else {
      velocity.setMag(velocity.mag()*0.991);
    }
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
    if (velocity.mag() > 12) velocity.setMag(12);


    if (location.x > 825) {
      location.x = -25;
    }
    if (location.y > 825) {
      location.y = -25;
    }
    if (location.x < -25) {
      location.x = 825;
    }
    if (location.y < -25) {
      location.y = 825;
    }
  }
}
