void setup(){
  size(400, 550);
  
}
int x=200;
int y=275;
int birdYVelocity = 30;
int gravity = 1;
int pipeX=180;
int upperPipeHeight;
void draw(){
  background(22, 175, 186);
fill(244, 215, 66);
stroke(0,0,0);
ellipse(x, y, 30, 20);
y=y+gravity;
fill(12, 178, 42);
rect(pipeX, 0, 45, upperPipeHeight);
pipeX--;
if(pipeX<0){
  pipeX=400;
  fill(12, 178, 42);
rect(pipeX, 0, 45, upperPipeHeight);
}
}

void teleportPipes(){
  if(pipeX<0){
  pipeX=400;
  upperPipeHeight = (int) random(100, 350);
}
}

void mousePressed(){
  y=y-birdYVelocity;
}
