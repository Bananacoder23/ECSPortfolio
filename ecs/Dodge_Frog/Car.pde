class Car{
  //if (!gameOver) {
  int x,y;
  PImage car;
  Car(){
 x=width/2;
 y=height-100;
 car=loadImage("car.png");
 
  }
 void display(){
   imageMode (CENTER);
   image(car,x,y-200);
   car.resize(32,32);
 }
 void move(int speed) {
  x += speed;
  if (x > width) {
    x = -car.width;  // Wrap around to the left side of the screen
  } else if (x < -car.width) {
    x = width;  // Wrap around to the right side of the screen
  }
}
  }
//void move (int tempX, int tempY){
   //x=+tempX;
   //y=+tempY;
 //}
//}
