import controlP5.*;

ControlP5 cp5;

int tabWidth = 80;
int tabHeight = 75;
int labelSize = 30;

int numEvents = 14;


void setup() {
  //fullScreen();
  //orientation(LANDSCAPE);
  size(1280,720);

  cp5 = new ControlP5(this);
  tabs();
}

void draw() {
}

void tabs() {
  for (int i = 0; i < numEvents; i++) {
    String tabName = "2" + nf (i,2);
    cp5.addTab(tabName);
    //println(tabName);
  }
}
