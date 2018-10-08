# Proyecto2
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

PImage image;
PImage imaged;
float i=0;
Fondo fondo;
Petalos petalos;
Gravedad gravedad;
boolean G=false;
ArrayList <Adorno> adorno;
void setup()
{
  size(600,600);
  //inicializo el objeto con la función loadImage(), pasando el nombre del archivo
  //almacenado en /data
 
  fondo = new Fondo();
  image = loadImage("FLORDELEON.jpg");
  imaged= loadImage("petalo1.png");
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  petalos = new Petalos(215,340);
  gravedad= new Gravedad();
  adorno = new ArrayList <Adorno>();
  for (int i= 0; i<100; i++){
    adorno.add(new Adorno());
  }

}
void draw()
{
  
  fondo.display();
  petalos.displayP1();
  petalos.displayP2();
  petalos.displayP3();
  petalos.displayP4();
  petalos.displayP5();
  petalos.displayP6();
  petalos.displayP7();
  petalos.displayP8();
  petalos.displayP9();
  petalos.displaydiez();
  petalos.displayonce();
  petalos.displaydoce();
  petalos.displaytrece();
  petalos.displaycatorce();
  petalos.displayquince();
  petalos.displaydiesciseis();
  petalos.displaydiecisiete();
  petalos.displaydieciocho();
  petalos.displaydiecinueve();
  petalos.displayveinte();
  petalos.displayveintiuno();
  petalos.displayveintidos();
  petalos.displayveintitres();
  petalos.displayveinticuatro();
  petalos.displayveinticinco();
  petalos.displayveintiseis();
  petalos.displayveintisiete();
  
  for (Adorno e:adorno){
    e.display();
    e.mover();
  }
}

