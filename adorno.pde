class Adorno{
 float x,y;
 float dx,dy;
 float t;
 color c;
 float a;
 float v;
 
 Adorno(){
   this.x = random(50,350);
   this.y = random(50,350);
   this.t = random(20);
   this.a = random(TWO_PI);
   this.v = 0.5;
   this.c = color(255,255,255,80);
   this.dx = cos(this.a)*this.v;
   this.dy = sin(this.a)*this.v;
 }
 
 void display(){
   noStroke();
   fill(this.c);
   ellipse(this.x,this.y,this.t,this.t);
 }
 
 void mover(){
   this.x += this.dx;
   this.y += this.dy;
   rebota();
 }
 
 void rebota(){
   if(this.x-this.t/2<0 || this.x+this.t/2>width ){
     dx*= -1;
   }
   if (this.y-this.t/2<0|| this.y+this.t/2>height){
     dy *=-1;
   }  
 }
}
