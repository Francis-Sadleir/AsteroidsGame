class GameObject {

  PVector location;
  PVector velocity;
  int hp;
  float size;

  GameObject() {
  }
  void show() {

    strokeWeight(2);
    stroke(255);
    fill(0);
  }

  void act() {

    location.add(velocity);
  }
}
