//no temp values in the particle system class in simple particle system 
//example on processing.org. why?
//any way to create temperary accceleration?
//need to get the mouse click to not be so dramatic. don't want the ball to 
//jump

//Particle clas
class Particle {
  float x;
  float y;
  float vx;
  float vy;
  float d;

  float red = 255;
  float green = 255;
  float blue = 255;

  boolean inside = false;

  Particle(float tempX, float tempY, float tempVX, float tempVY, float tempD) {
    x = tempX;
    y = tempY;
    vx = tempVX;
    vy = tempVY;
    d = tempD;
  }

  //displaying particles with a fill
  void display() {
    rectMode(CENTER);
    noStroke();
    fill(red, green, blue);
    ellipse(x, y, d, d);
  }

  //determining the velocity of each particle
  void move() {
    x = x+vx;
    y = y+vy;
  }

  //randomizes fill color when particle collides with a boundry
  //currently the size of the window.
  void blush() {
    if (x > width || x < 0 || y > height || y < 0) {
      red = random(0, 255);
      green = random(0, 255);
      blue = random(0, 255);
    }
  }

  //reverses velocity of particle when it hits a wall
  void bounce() {
    if (x>width || x<0) {
      vx = vx*-1;
      vy = vy+(random(-2, 2));
    } 
    if (y>height || y<0) {
      vy = vy*-1;
      vx = vx+(random(-2, 2));
    }
  }


  //makes it possible to click and drag on a single particle
  void clickable() {
    if (mouseX<x+d && mouseX>x-d && mouseY>y-d && mouseY<y+d && mousePressed == true) {
      inside = true;
      if (inside == true) {
        x = mouseX;
        y = mouseY;
        //x = lerp(x, mouseX, 1);
        //y = lerp(y, mouseY, 1);
      }
    }
  }
}
