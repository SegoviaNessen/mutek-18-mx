import controlP5.*;

ControlP5 cp5;


int tabWidth = 80;
int tabHeight = 75;
int labelSize = 30;


void setup() {
  size(1280, 720);

  cp5 = new ControlP5(this);
  tabs();
}

void draw() {
}

void tabs () {
  cp5.addTab("2004")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2005")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2006")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2007")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2008")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2009")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);

  cp5.addTab("2010")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2011")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2012")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2013")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2014")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2015")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2016")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.addTab("2017")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
  cp5.getTab("default")
    .setWidth(tabWidth)
    .setHeight(tabHeight)
    .setLabel("2003")
    .getCaptionLabel().align(CENTER, CENTER).setSize(labelSize);
    
}
