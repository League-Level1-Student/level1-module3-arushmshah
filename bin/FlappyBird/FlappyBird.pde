void setup(){
  size(400, 550);
  
}
int x=120;
int y=275;
int birdYVelocity = 30;
int gravity = 1;
int pipeX=230;
int upperPipeHeight = (int) random(100, 350);
int gap = 85;
int lowerPipeHeight = (int) 635-upperPipeHeight;
int lowerY = upperPipeHeight+gap;
boolean gameOver=false;

void draw(){
   background(22, 175, 186);
  if(gameOver){
    fill(0, 0, 0);
   text("GAME OVER",70, 275);
   textSize(50);
    
  }
  else{
fill(244, 215, 66);
stroke(0,0,0);
ellipse(x, y, 30, 20);
y=y+gravity;
fill(12, 178, 42);
rect(pipeX, 0, 45, upperPipeHeight);
pipeX-=2;
teleportPipes();
rect(pipeX, lowerY, 45, lowerPipeHeight); 
println(intersectsPipes());

  gameOver=intersectsPipes();
  }
}
  




void teleportPipes(){
  if(pipeX<0){
  pipeX=400;
  upperPipeHeight = (int) random(105, 350);
  lowerY = upperPipeHeight+gap;
}
}


void mousePressed(){
  y=y-birdYVelocity;
}

boolean intersectsPipes() { 
     if (y < upperPipeHeight && x > pipeX && x < (pipeX+45)){
          return true; }
     else if (y>lowerY && x > pipeX && x < (pipeX+45)) {
          return true; }
     else { return false; }
}
