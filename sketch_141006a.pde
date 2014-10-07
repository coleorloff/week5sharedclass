//num = number of particle objects
int num = 20;

//creating new arrary of Particle objects
Particle[] particle = new Particle[num];


void setup(){
  size(600, 400);
  
  
 //initializing multiple particle objects
 //with attributes (tempX, tempY, tempVX, tempVY, tempD)
  for (int i = 0; i < particle.length; i++){
    particle[i] = new Particle(width-2, height-2, 6, 6, 10);
  }
}


void draw(){
background(255);

//calling particle methods for behaviors
 for (int i = 0; i < particle.length; i++){
 particle[i].display();
 particle[i].move();
 particle[i].bounce();
 particle[i].blush();
 particle[i].clickable();
}



}



   
 
  
   
   

   
  
   
   
