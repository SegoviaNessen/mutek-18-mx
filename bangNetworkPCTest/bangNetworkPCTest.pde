import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress remoteLocation;

int x;



void setup() {
  size(480,480);
  oscP5 = new OscP5(this,12000);
  remoteLocation = new NetAddress("192.168.15.26",12000);

}

void draw() {
  background(78,93,75);
  text(
        "x: "+ nfp(x,1,3)+"\n",
         width/2,height/2);

}


void oscEvent(OscMessage theOscMessage){
  if(theOscMessage.checkTypetag("i")){
    x = theOscMessage.get(0).intValue();

  }
}
