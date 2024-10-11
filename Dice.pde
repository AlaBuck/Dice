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
      }
  }
