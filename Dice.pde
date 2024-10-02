Die d1;
int sum = 0;
void setup()
{
  textAlign(CENTER);
  size(800,900);
  noLoop();
}
void draw()
{
  background(120);
  for(int y = 0; y < 800; y+=35){
    for(int x = 0; x < 800; x+=35){
      d1 = new Die(x,y);
      d1.roll();
      d1.show();
    }
  }
  text("total value" + sum, 400, 850);
}
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die{
  int dievalue,myX,myY;
  
  Die(int x, int y) //constructor
  {
   myX = x;
   myY=y;
  }
  void roll()
  {
    dievalue = (int)(Math.random()*6)+1;
    sum+= dievalue;
  }
  void show()
  {
    fill(255);
    noStroke();
    rect(myX,myY,30,30);
    stroke(0);
    strokeWeight(7);
    if(dievalue == 1){
      point(myX+15,myY+15);}
    else if(dievalue == 2){
    point(myX+6,myY+6);
    point(myX+24,myY+24);
  }
    else if(dievalue == 3){
      point(myX+15,myY+15);
      point(myX+6,myY+6);
      point(myX+24,myY+24);
  }
    else if(dievalue == 4){
      point(myX+6,myY+24);
      point(myX+6,myY+6);
      point(myX+24,myY+24);
      point(myX+24,myY+6);
  }
    else if(dievalue ==5){
      point(myX+6,myY+24);
      point(myX+6,myY+6);
      point(myX+24,myY+24);
      point(myX+24,myY+6);
      point(myX+15,myY+15);
  }
    else if(dievalue == 6){
      point(myX+6,myY+24);
      point(myX+6,myY+15);
      point(myX+6,myY+6);
      point(myX+24,myY+24);
      point(myX+24,myY+15);
      point(myX+24,myY+6);
    }
  }
}
