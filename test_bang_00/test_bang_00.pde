import controlP5.*;
import processing.video.*;



ControlP5 cp5;
Movie movie;

int counter = 0;
int s;

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
    //println(getMovieLength()+"/"+getMovieFrame());
  }
  //aqui  abajo esta la manera de resetear el video via frames
  //if (getMovieLength() == getMovieFrame()) {
  //  movie.jump(0.0);
  //  counter = 0;
  //  background(0);
  //}
  
  //esta es una manera muy limpia de resetear el video
  //por medio de métodos de la clase video
  if (movie.time() == movie.duration()) {
    movie.jump(0.0);
    counter = 0;
    background(0);
  }
  //si se da click de nuevo en el bang detiene todo
  //y resetea
  if (counter == 2) {
    movie.jump(0.0);
    counter = 0;
    background(0);
  }
}

public void I() {
  //println(movie.duration());
}

public void  controlEvent(ControlEvent theEvent) {

  if ( theEvent.getController().getName().equals("I")) {
    counter ++;
  }
}
// esta es la formula que nos permite ver el frame que corre 
int getMovieFrame() {
  return ceil(movie.time() * 30)-1;
}
//esta formula nos permite ver el total de cuadros del video
int getMovieLength() {
  return int(movie.duration() * movie.frameRate);
}
