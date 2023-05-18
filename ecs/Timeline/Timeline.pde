//Ryan Li Timeline Project 4/6/23
// /n for next line

void setup(){
  size(950,400);
  
 }

void draw(){
  background(#DB091A);
  
  drawRef();
  histEvent(150,200,"2009", true, "The Original Angry Birds Game was first released into the world");
  histEvent(270,200,"2010", true, "Angry Birds plush toys were created");
  histEvent(390,200,"2011", true, "Angry Birds Rio was created as the third game in the series while tying in with the movie, Rio");   
  histEvent(510,200,"2012", true, "Angry Birds Space was first released and Angry Birds first surpasses 1 billion downloads");
  histEvent(510,300,"2012", false, "Angry Birds Star Wars was first released due to the popularity of Star Wars.");
  histEvent(630,300,"2014", false, "Two of Angry Bird's RPG games (Angry Birds Transformers and Angry Birds Epic) were released" );
  histEvent(750,300,"2015", false, "The sequel to the original Angry Birds, Angry Birds 2, is released" );
  histEvent(870,300,"2016", false, "The first ever Angry Birds Movie was released in theaters." );
  

}

void drawRef(){
  textAlign(CENTER);
  textSize(35);
  fill(0);
  text("Angry Birds Timeline", width/2, 60);
  textSize(20);
  text("Ryan Li", width/2, 90);
  strokeWeight(3);
  line(50,250,900,250);
  line(50,245,50,255);
  line(900,245,900,255);
  textSize(14);
  text("2000",50,270);
  text("2020",900,270);
 
 
}

void histEvent(int x,int y, String title, boolean top, String detail) {   
  if(top == true) {
   line(x,y,x-20,y+50);
} else {
   line(x,y,x-20,y-50);
}
  rectMode(CENTER);
  fill(222);
  strokeWeight(2);
  rect(x,y,100,30,7);
  fill(0);
  text(title,x,y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    if(top){
      text(detail,width/2,150);
    } else { 
      text(detail,width/2,150);
    }
    
  }
  
  }
