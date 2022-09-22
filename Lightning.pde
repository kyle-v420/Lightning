int startX = 0;
int startY = 300;
int endX = 0;
int endY = 300;

void setup(){
  size(600,600);
  strokeWeight(3);
  background(0,0,0);
}

void mousePressed(){
  redraw();
}

void draw(){
  stroke((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  for(int i = 0; i < 50; i= i+2){
    endX = endX + (int)(Math.random() * 10) + 1;
    endY = endY + (int)(Math.random()*20) - 9;
    line(startX, startY, endX + (int)(Math.random() * 10) + 1, endY + (int)(Math.random()*20) - 9);
      startX = endX;
      startY = endY;
  }
  
}
void redraw(){
  startX = 0;
  startY = 300;
  endX = 0;
  endY = 300;
}

