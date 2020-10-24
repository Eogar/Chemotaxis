 Bacteria[] heyy; 
 void setup()   
 {     
   size(400, 400);
   heyy = new Bacteria[2000];
   for(int i=0; i < heyy.length; i++)
      heyy[i] = new Bacteria();
 }   
 void draw()   
 {    
   background(0);
   for(int i=0; i < heyy.length; i++){
     heyy[i].show();
     heyy[i].move ();
   }   
 }  
 class Bacteria    
 {     
   int myX, myY;
   int myColor;
   Bacteria(){
     myX = 200;
     myY = 200;
     myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   }  

   void move(){
     myX = myX + (int)(Math.random()*15)-7;
     myY = myY + (int)(Math.random()*15)-7;
   }

   void show(){
     fill(myColor);
     stroke(myColor);
     ellipse(myX, myY, 1, 1);
   }
 }    
