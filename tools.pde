void button(int x, int y, int w, int h, String label) {

  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    strokeWeight(5);
    stroke(0, 0, 255);
  } else {
    strokeWeight(1);
    stroke(0);
  }

  fill(255);
  rect(x, y, w, h);

  fill(0);
  textSize(50);
  text(label, x, y);
}


boolean buttonPressed (int x, int y, int w, int h) {
  return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2;
}
