public void setup() { //repl.it muse call size here
    size(500, 500);
  }
  int x = 0;
  int y = 500;
  int len = 500;
  boolean In = true;
  int hmm = 0;
  int check = 0;
  int circleR = 1500;
  public void draw(){
    fill(150,150,150);
    rect(0,0,500,500);
    
    stroke(10);
    circleLol(circleR);
    
    sierpinski(x,y,len,hmm);
    if(In == true){
    len+=10;
    circleR+=5;
    if(circleR > 3000){
     circleR = 1500; 
    }
    if(len>1000){
     len=500;
     x=0;
     y=500;
     while(hmm==check){
       hmm = (int)(Math.random()*6);
     }
     check=hmm;
    }
    } else {
     circleR-=5;
    if(circleR < 1500){
     circleR = 3000; 
    }
      if(len < 500){
      len=1000;
      while(hmm==check){
       hmm = (int)(Math.random()*6);
     }
     check=hmm;
      }
      len-=10;
    }
  }
  public void mouseClicked(){
   if(In){
     In=false;
   } else {
    In=true; 
   }
  }
  public void sierpinski(int x, int y, int len, int c){
   if(len <= 15){
     if(c == 1){
       fill(255,0,0);
     } else if(c == 2){
       fill(0,255,0);
     } else if(c == 3){
       fill(0,0,255);
     } else if(c == 4){
       fill(255,255,0);
     } else if(c == 5){
       fill(0,255,255);
     } else if(c == 6){
       fill(255,0,255);
     } else {
      fill(0,0,0); 
     }
     triangle(x,y,x+(len/2),y-len,x+len,y);
  } else {
    sierpinski(x,y,len/2,hmm);
    sierpinski(x+len/2,y,len/2,hmm);
    sierpinski(x+len/4,y-len/2,len/2,hmm);
  }
  }
  
  public void circleLol(int r){
    if(r < 10){
     arc(0,500,r,r,PI+HALF_PI,TWO_PI); 
    } else {
      arc(0,500,r,r,PI+HALF_PI,TWO_PI);
     circleLol(r-30); 
    }
  }
