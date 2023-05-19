//Ryan Li | 27 April | Frog Dodge
//Description: Help the Frog get the Golden Nugget, a very rare and mysterious artifact. 
//However there are a few obstacles you need to avoid such as the abandoned car and the
//glue pool (If you get stuck, you'll never get out). 
//Try to get the highest socre you can!
//Additional Help: ChatGPT for the time limit

boolean play;
boolean gameOver;
Frog f1;
Log l1,l2,l3;
Car car;
int score;
int level;
int lives;
int tarX;
int tarY;
float log1Dist, log2Dist, log3Dist, carDist;
float frogtarDist, dist;
int startTime;
int elapsedTime;
int timeLimit = 60000;


void setup (){
  size(400,600);
  f1=new Frog();
  l1=new Log();
  l2=new Log();
  car = new Car();
  score=0;
  level=1;
  startScreen();
  tarX = int(random(width));
  tarY = int(random(height));
  startTime = millis();
} 

void draw (){
  
  log1Dist = dist(f1.x, f1.y, l1.x, l1.y);
  if(!play) {
 startScreen();
 }else {
  background(128);
  drawBackground();
  l1.display();
  l1.move('a');
  l2.display();
  l2.move('d');
  f1.display();
  
  car.display();
  if(log1Dist<50){
    score=score-100;
    
    f1.x=l1.x;
    f1.y=l1.y;
    println("Frog position after collision: (" + f1.x + ", " + f1.y + ")");
  }
  carDist = dist(f1.x, f1.y, car.x, car.y);
    if (carDist>500){
    gameOver();
    //Car has kill-raidus of 500
  
      
    }
  }
  
  frogtarDist = dist(f1.x, f1.y, tarX, tarY);
  if(frogtarDist<20){
    tarX = int(random(width));
    tarY = int(random(height));
    score+=1000;
  }
  
  if (!gameOver) {
    fill(255, 255, 0);
    rect(tarX, tarY, 20, 20);
    }
  
  elapsedTime = millis() - startTime; 
  if (elapsedTime >= timeLimit) {
    gameOver();
  }
 
   
  
 
    
  

    
  infoPanel();
  if(f1.y>height){
    gameOver();
  //f1.move(mouseX,mouseY);
  }
 }



void keyPressed(){
  if(!play){
    play=true;
  }else{
  if (key=='w'){
    f1.move('w');
  }else if (key=='a'){
    f1.move('a');
  }else if (key=='s'){
    f1.move('s');
  }else if (key=='d'){
    f1.move('d');
  } 
 }
}

void drawBackground(){
  fill(0,200,23);
  rect(0,500,width,80);
  fill(#F0DD0F);
  rect(0,100,width,80);
}


void startScreen(){
  play=false;
 background(0);
 fill(255);
 textAlign(CENTER);
 text("Dodge Frog",width/2,300);
 text("by Ryan Li",width/2,340);
 text("Press any key to start",width/2,360);

}


void gameOver(){
  play=false;
  background(0);
 fill(255);
 text("Game Over",width/2,300);
 text("Score:" + score,width/2,340);
 text("Press any key to start",width/2,360);
}

void infoPanel(){
  fill(128,128);
  rect(0,0,width,50);
  fill(255);
  text("Score:" +score,50,40);
  int remainingTime = (timeLimit - elapsedTime) / 1000; 
  text("Time: " + remainingTime + "s", width - 100, 40);
}
