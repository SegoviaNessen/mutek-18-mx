import controlP5.*;
import ketai.net.*;
import netP5.*;
import oscP5.*;

ControlP5 cp5;
OscP5 oscP5;
NetAddress remoteLocation;

float v1;
String myIPAddress;

void setup() {
  orientation(LANDSCAPE);
  cp5 = new ControlP5(this);
  cp5.addSlider("v1")
      .setPosition(40,height/2)
      .setSize(1000,50)
      .setRange(100,300)
      .setValue(0)
      .setColorCaptionLabel(color(255,0,0));
      
  oscP5 = new OscP5(this,12000);
  remoteLocation = new NetAddress("192.168.15.99",12000);
  
  myIPAddress = KetaiNet.getIP();
}

void draw() {
  OscMessage myMessage = new OscMessage("f");
  
  myMessage.add(v1);
  oscP5.send(myMessage,remoteLocation);
  
  text(myIPAddress,100,100);
}
