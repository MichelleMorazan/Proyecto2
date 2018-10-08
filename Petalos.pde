class Petalos {
  
  Body body;
  float w;
  float h;
   Petalos(float x, float y) {
    w = 128;
    h = 128;
    makeBody(new Vec2(x, y), w, h);
  }
   void makeBody(Vec2 center, float w_, float h_) 
   {
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);  
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.KINEMATIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);
    
    body.createFixture(fd);
    body.setLinearVelocity(new Vec2(random(-10, 10), random(10)));
    body.setAngularVelocity(random(-5, 5));
    
    
  }
  void displayP1() 
  {
    G=true;
    
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='a' || key=='A')
    {
      box2d.step();
      gravedad.gravedad1();
    }
  }
  void displayP2() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(40,40);
    rotate(-a);
    rotate(PI/2);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='b' || key=='B')
    {
      box2d.step();
      gravedad.gravedad2();
    }
  }

 void displayP3() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-40,42);
    rotate(-a);
    rotate(-PI/2);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='c' || key=='C')
    {
      box2d.step();
     gravedad.gravedad3();
    }
  }

void displayP4() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(40,34);
    rotate(-a);
    rotate(PI/2.2);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='d'|| key=='D')
    {
      box2d.step();
      gravedad.gravedad4();
    }
  }

void displayP5() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(38,26);
    rotate(-a);
    rotate(PI/2.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='e'|| key=='E')
    {
      box2d.step();
      gravedad.gravedad5();
    }
  }
  
  void displayP6() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(34,19);
    rotate(-a);
    rotate(PI/3);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='f'|| key=='F')
    {
      box2d.step();
     gravedad.gravedad6();
    }
  }
 void displayP7() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(28,11);
    rotate(-a);
    rotate(PI/3.8);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='g'|| key=='G')
    {
      box2d.step();
     gravedad.gravedad7();
    }
  }
   void displayP8() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(18,6);
    rotate(-a);
    rotate(PI/5.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='h'|| key=='H')
    {
      box2d.step();
     gravedad.gravedad8();
    }
  }

 void displayP9() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(10,3);
    rotate(-a);
    rotate(PI/9.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='i'|| key=='I')
    {
      box2d.step();
     gravedad.gravedad9();
    }
  }

 void displaydiez() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-12,3);
    rotate(-a);
    rotate(-PI/9.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='j'|| key=='J')
    {
      box2d.step();
      gravedad.gravedad10();
    }
  }

void displaydoce() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(10,3);
    rotate(-a);
    rotate(PI/9.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='i'|| key=='I')
    {
      box2d.step();
     gravedad.gravedad11();
    }
  }

 void displayonce() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-22,6);
    rotate(-a);
    rotate(-PI/5.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='k'|| key=='K')
    {
      box2d.step();
     gravedad.gravedad10();
    }
  }
 void displaytrece() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-32,12);
    rotate(-a);
    rotate(-PI/3.7);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='l'|| key=='L')
    {
      box2d.step();
      gravedad.gravedad9();
    }
  }

void displaycatorce() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-38,20);
    rotate(-a);
    rotate(-PI/3);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='m'|| key=='M')
    {
      box2d.step();
     gravedad.gravedad8();
    }
  }
  
  void displayquince() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-40,28);
    rotate(-a);
    rotate(-PI/2.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='ñ'|| key=='Ñ')
    {
      box2d.step();
     gravedad.gravedad7();
    }
  }
void displaydiesciseis() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-42,35);
    rotate(-a);
    rotate(-PI/2.2);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='o'|| key=='O')
    {
      box2d.step();
     gravedad.gravedad6();
    }
  }
  
  void displaydiecisiete() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-32,65);
    rotate(-a);
    rotate(-PI/1.4);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='p'|| key=='P')
    {
      box2d.step();
     gravedad.gravedad5();
    }
  }

 void displaydieciocho() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-38,50);
    rotate(-a);
    rotate(-PI/1.7);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='q'|| key=='Q')
    {
      box2d.step();
    gravedad.gravedad4();
    }
  }
void displaydiecinueve() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-38,57);
    rotate(-a);
    rotate(-PI/1.6);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='r'|| key=='R')
    {
      box2d.step();
     gravedad.gravedad3();
    }
  }

void displayveinte() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-23,72);
    rotate(-a);
    rotate(-PI/1.2);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='s'|| key=='S')
    {
      box2d.step();
     gravedad.gravedad2();
    }
  }
  
  void displayveintiuno() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(-12,75);
    rotate(-a);
    rotate(-PI/1.1);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='t'|| key=='T')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }
void displayveintidos() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(10,75);
    rotate(-a);
    rotate(PI/1.05);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='u'|| key=='U')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }

void displayveintitres() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(18,74);
    rotate(-a);
    rotate(PI/1.1);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='v'|| key=='V')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }
  
  void displayveinticuatro() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(26,72);
    rotate(-a);
    rotate(PI/1.2);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='w'|| key=='W')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }
 void displayveinticinco() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(33,66);
    rotate(-a);
    rotate(PI/1.3);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='x'|| key=='X')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }
 void displayveintiseis() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(39,58);
    rotate(-a);
    rotate(PI/1.5);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='y'|| key=='Y')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }
void displayveintisiete() 
  {
    G=false;
    //box2d.setGravity(0, 0);
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    translate(39,48);
    rotate(-a);
    rotate(PI/1.7);
    imageMode(CENTER);
    image(imaged,0,0);
    popMatrix();
    if(key=='z'|| key=='Z')
    {
      box2d.step();
      box2d.setGravity(0, -10);
    }
  }































































































}
