  Die bob;
  void setup()
  {
      noLoop();
      bob = new Die(0,0);
      size (400,400);
  }
  void draw()
  {
    bob.show();
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
   int value;
   int myX, myY;
   int pos1=25;
   int pos2=50;
   int pos3=75;
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
          value = (int)((Math.random()*6)+1);  
      }
      void show()
      {
          rect(myX,myY,100,100);
          if(value==1){
            ellipse(myY+pos2, myX+pos2, 20,20);
          } else if(value==2) {
            ellipse (myX/4,myY/4,10,10);
            ellipse ((3*myX)/4, (3*myX)/4, 10, 10);
          } else if(value==3)  {
            ellipse (pos1,pos1,20,20);
            ellipse (pos2,pos2,20,20);
            ellipse (pos3,pos3,20,20);
          } else if(value==4)  {
            ellipse (pos1,pos1,20,20);
            ellipse (pos3,pos1,20,20);
            ellipse (pos1,pos3,20,20);
            ellipse (pos3,pos3,20,20);
          } else if(value==5)  {
            ellipse (pos2,pos2,20,20);
            ellipse (pos1,pos1,20,20);
            ellipse (pos3,pos1,20,20);
            ellipse (pos1,pos3,20,20);
            ellipse (pos3,pos3,20,20);
          } else if (value==6) {
            ellipse (pos1,pos1,20,20);
            ellipse (pos3,pos1,20,20);
            ellipse (pos1,pos3,20,20);
            ellipse (pos3,pos3,20,20);
            ellipse (pos1,pos2,20,20);
            ellipse (pos3,pos2,20,20);
          }

  }
  }
