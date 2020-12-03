class Fire extends GameObject {
  PVector direction;
  int alpha; //transparency

  Fire() {
    location = myShip.location.copy();
    velocity = myShip.direction.copy();
    velocity.rotate (radians(180) + random (-0.4, 0.4));
    velocity.setMag(10);
    size = random(2, 7);
    hp = 1;
    alpha = 255;
  }

  void show() {

    strokeWeight(2);
    stroke(255, alpha);
    fill(0, alpha);
    alpha = alpha - 25;
    if (alpha <= 0) hp = 0;
    ellipse(location.x, location.y, size, size);
  }
}
