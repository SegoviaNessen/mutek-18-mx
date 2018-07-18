import controlP5.*;

ControlP5 cp5;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);

  cp5.addBang("I")
    .setPosition(width/2, height/2)
    .setSize(50, 50)
    .setId(0)
    ;
}

void draw() {
}

public void I() {
  println("bang");
}
