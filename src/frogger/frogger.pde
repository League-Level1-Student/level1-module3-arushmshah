car car1 = new car(300, 100, 50, 6);
car car2 = new car(500, 300, 50, 6);
car car3 = new car(400, 200, 50, 6);
car car4 = new car(600, 400, 50, 6);
void draw() {
  background(57, 100, 219);

  fill(11, 122, 46);
  ellipse(frogX, frogY, 20, 20); 
boolean a=intersects(car1);
boolean b=intersects(car2);
boolean c=intersects(car3);
boolean d=intersects(car4);
if(a==true||b==true||c==true||d==true){
 frogX=400;
 frogY=600;
}
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  
  car1.moveLeft();
  car2.moveLeft();
  car3.moveRight();
  car4.moveRight();
  
  
}
int frogX=400;
int frogY=600;



void setup() {
  size(800, 600);
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP&&frogY>0)
    {
      frogY-=7;
    } else if (keyCode == DOWN&&frogY<600)
    {
      frogY+=7;
    } else if (keyCode == RIGHT&&frogX<800)
    {
      frogX+=7;
    } else if (keyCode == LEFT&&frogX>0)
    {
      frogX-=7;
    }
  }
}

class car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
 int getX(){
    return carX;
  }
   int getY(){
    return carY;
  }
   int getSize(){
    return carSize;
  }
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
  
  void moveLeft(){
  carX-=carSpeed;
  if(carX<-120){
    carX=920;
    
  }
  }
    void moveRight(){
  carX+=carSpeed;
  if(carX>800){
    carX=-120;
    
  }
  }
  
}

boolean intersects(car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
