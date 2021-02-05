void setup() {
size(500,500) ;
}

void draw() {

sierpinski(50,450,400);
}

public void sierpinski(int x, int y, int len) {
if (len<=15) {
triangle(x, y, x+len/2, y-len,x + len, y);
  } else {
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
  }
}

public void mousePressed() {
   fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
redraw();
}

