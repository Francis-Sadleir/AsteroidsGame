class Asteroid extends GameObject {

  Asteroid () {
    location = new PVector(random(100, 700), random(100, 700));
    velocity = new PVector(2, 0);
    velocity.rotate (random(TWO_PI));
    hp = 1;
    size = 120;
  }

  Asteroid(float s, float x, float y) {

    hp = 1;
    location = new PVector(x, y);
    velocity = new PVector(2, 0);
    velocity.rotate (random(TWO_PI));
    size = s;
  }

  void show() {
    strokeWeight(3);
    stroke(255);
    rect(location.x, location.y, size, size);
  }

  void act() {
    super.act();


    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj= myObjects.get(i);
      if (obj instanceof Bullet) {
        if ( dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          obj.hp = 0;
          hp = 0;
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Asteroid(size/2, location.x, location.y));
        }
      }
      i++;
    }

    if (size < 30) {
      hp = 0;
    }

    if (location.x > 850) {
      location.x = -50;
    }
    if (location.y > 850) {
      location.y = -50;
    }
    if (location.x < -50) {
      location.x = 850;
    }
    if (location.y < -50) {
      location.y = 850;
    }
  }
}
