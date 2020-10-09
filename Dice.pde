int diceSize = 85;
void setup()
{
  size(375, 400);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  background(0);
  int numDots = 0;
  //int total = 0;
  for (int y = 10; y < 300; y+= 90) {
    for (int x = 10; x < 300; x+=90) {
      Die bob = new Die(x, y);
      bob.show();
      bob.roll();
      //sum stuff
      if (bob.side == 1) {
        numDots = numDots + 1;
      }
      if (bob.side == 2) {
        numDots = numDots + 2;
      }
      if (bob.side == 3) {
        numDots = numDots + 3;
      }
      if (bob.side == 4) {
        numDots = numDots + 4;
      }
       if (bob.side == 5) {
        numDots = numDots + 5;
      }
       if (bob.side == 6) {
        numDots = numDots + 6;
      }
    }
  }
  fill((int)(Math.random()*255)-10,(int)(Math.random()*255)-10,(int)(Math.random()*255)-10);
  rect(150,375,75,15);
  fill(255);
  text("sum = "+numDots, 188, 380);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int die, myX, myY, side;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    side = 1;
    roll();
  }
  void roll()
  {
    die = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(240);
    rect(myX, myY, diceSize, diceSize, diceSize/5);
    //dots code
    fill((int)(Math.random()*255)+100,(int)(Math.random()*255)+100,(int)(Math.random()*255)+100);
    side = (int)((Math.random()*6)+1);
    if (side == 1) {
      ellipse((myX + diceSize/2), (myY + diceSize/2), diceSize/5, diceSize/5);
    }
    if (side == 2) {
      ellipse(myX + diceSize/2, myY + 60, diceSize/5, diceSize/5);
      ellipse(myX + diceSize/2, myY + diceSize/4, diceSize/5, diceSize/5);
    }
    if (side == 3) {
      ellipse((myX + diceSize/2), (myY + diceSize/2), diceSize/5, diceSize/5);
      ellipse((myX + 70), (myY + 70), diceSize/5, diceSize/5);
      ellipse(myX + 15, (myY + diceSize/6), diceSize/5, diceSize/5);
    }
    if (side == 4) {
      ellipse(myX + diceSize/4, myY + 60, diceSize/5, diceSize/5);
      ellipse(myX + diceSize/4, myY + diceSize/4, diceSize/5, diceSize/5);
      ellipse(myX + 65, myY + diceSize/4, diceSize/5, diceSize/5);
      ellipse(myX + 65, myY + 60, diceSize/5, diceSize/5);
    }
    if (side == 5) {
      ellipse((myX + diceSize/2), (myY + diceSize/2), diceSize/5, diceSize/5);
      ellipse((myX + 70), (myY + 70), diceSize/5, diceSize/5);
      ellipse(myX + 15, (myY + diceSize/6), diceSize/5, diceSize/5);
      ellipse((myX + 15), (myY + 70), diceSize/5, diceSize/5);
      ellipse(myX + 70, (myY + diceSize/6), diceSize/5, diceSize/5);
    }
    if (side == 6) {
      ellipse((myX + diceSize/2), (myY + diceSize/2), diceSize/5, diceSize/5);
      ellipse((myX + diceSize/2), (myY + 70), diceSize/5, diceSize/5);
      ellipse((myX + diceSize/2), (myY + 15), diceSize/5, diceSize/5);
      ellipse((myX + 15), (myY + diceSize/2), diceSize/5, diceSize/5);
      ellipse((myX + 15), (myY + 70), diceSize/5, diceSize/5);
      ellipse((myX + 15), (myY + 15), diceSize/5, diceSize/5);
      ellipse((myX + 70), (myY + diceSize/2), diceSize/5, diceSize/5);
      ellipse((myX + 70), (myY + 70), diceSize/5, diceSize/5);
      ellipse((myX + 70), (myY + 15), diceSize/5, diceSize/5);
    }
  }
}
