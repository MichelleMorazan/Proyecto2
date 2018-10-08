class Fondo
{
  void display()
  {
    image(image,0,0);
    image.loadPixels();

    loadPixels();

  for(int i=0; i<image.pixels.length;i++)
  {
    int c=image.pixels[i];
    float r= red (c);
    float g= green (c);
    float b= blue (c);
    
    float offsetR= map(mouseX,0,width,-255,255);
    float offsetB= map(mouseY,0,height,-255,255);
    pixels[i] = color(r+offsetR,g,b+offsetB);
  }

  updatePixels();
  fill(0);
  noStroke();
  ellipse(215,380,35,25);
  fill(0,0,0,210); 
  rect(215,495,7,206);
  }
}
