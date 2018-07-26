import controlP5.*;
import ketai.net.*;
import netP5.*;
import oscP5.*;

ControlP5 cp5;
OscP5 oscP5;
NetAddress remoteLocation;

String myIPAddress;

void setup() {
  orientation(LANDSCAPE);
  textSize(50);
  initGUI();
  initNetworkConnection();
}

void draw() {
  text(myIPAddress, 100, 100);
}

void initNetworkConnection() {
  oscP5 = new OscP5(this, 12000);
  remoteLocation = new NetAddress("192.168.15.19", 12000);
  myIPAddress = KetaiNet.getIP();
}

void initGUI() {
  cp5 = new ControlP5(this);

  cp5.addBang("I")
    .setPosition(width/2, height/2)
    .setSize(50, 50)
    .setId(0)
    ;
}

public void I() {
  OscMessage myMessage = new OscMessage("I");
  myMessage.add(1);
  oscP5.send(myMessage,remoteLocation);
}
