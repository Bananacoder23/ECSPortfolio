class Frog{
 int x,y;
 
 PImage frog;
 Frog(){
   x=width/2;
   y=height-100;
   frog=loadImage("frog1.png");
 }
 void display(){
   imageMode(CENTER);
   frog.resize(32,32);
   image(frog,x,y);
 }
 void move(char dir){
   if(dir=='w'){
    y=y-20;
  }else if (dir=='a'){
    x=x-20;
  }else if (dir=='s'){
   y=y+20;
  }else if (dir=='d'){
   x=x+20;
  }
 }
}
