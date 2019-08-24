car car1 = new car(300, 100, 50, 60);
car car2 = new car(300, 100, 50, 60);
car car3 = new car(400, 200, 50, 60);

void draw() {
  background(57, 100, 219);

  fill(11, 122, 46);
  ellipse(frogX, frogY, 20, 20); 
  
  car1.display();
  car2.display();
  car3.display();
}
int frogX;
int frogY;



void setup() {
  size(800, 600);
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP&&frogY>0)
    {
      frogY-=5;
    } else if (keyCode == DOWN&&frogY<600)
    {
      frogY+=5;
    } else if (keyCode == RIGHT&&frogX<800)
    {
      frogX+=5;
    } else if (keyCode == LEFT&&frogX>0)
    {
      frogX-=5;
    }
  }
}

class car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  car(int carX, int carY, int carSize, int carSpeed) {
    this.carX=carX;
    this.carY=carY;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
  }
  void display() 
  {
    fill(194, 14, 4);
    rect(carX, carY, 120, 50);
  }
}
