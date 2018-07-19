import controlP5.*;
import processing.video.*;



ControlP5 cp5;
Movie movie;

int counter = 0;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);

  cp5.addBang("I")
    .setPosition(width/2, height/2)
    .setSize(50, 50)
    .setId(0)
    ;
  movie = new Movie(this, "transit.mov");
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  if ( counter == 1) {
    image(movie, 0, 0, width, height);
    movie.play();
  }
}

public void I() {
  println("bang");
}

public void  controlEvent(ControlEvent theEvent) {

  if ( theEvent.getController().getName().equals("I")) {
    counter = 1;
  }
}
