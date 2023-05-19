class Log{
  int x,y;
  PImage log;
  Log(){
    x=width-100;
    y=200;
    log=loadImage("log1.png");
  }
  void display(){
    imageMode(CENTER);
    log.resize(32,32);
    image(log,x,y-60);
  }
  void move(char dir){
    if(dir=='a'){
      x=x-5;
      if(x<0){
        x=width;
      }
    }else if(dir=='d'){
      x=x+5;
      if(x>width){
        x=0;
      }
    }
  }
}
