bola objBola1, objBola2, objBola3;

void setup(){
  size (400,400);
  objBola1 = new bola(40);
  objBola2 = new bola(40);
  objBola3 = new bola(40);
}

void draw(){

  background(255);

  objBola1.mover();
  objBola2.mover();
  objBola3.mover();
  
  if(objBola1.interseccion(objBola2))
  {
    objBola1.cambiarColor();
  }
  objBola1.display();
  objBola2.display();
  objBola3.display();
}

public class bola{
  float r;
  float velocidadX;
  float velocidadY;
  float posicionX;
  float posicionY;
  float colorBola;
  
  public bola(float tempR){
    r = tempR;
    posicionX = random(width);
    posicionY = random(height);
    velocidadX = random(-5,5);
    velocidadX = random(-5,5);
    colorBola = color(100,50);
    
  }
  
  public void display(){
  stroke(0);
  fill(colorBola);
  ellipse(posicionX,posicionY,r+2,r+2);
  colorBola = color(100,50);
  }
  
  public void cambiarColor(){
    colorBola = color(100,50);
  }
  
  public void mover(){
    posicionX += velocidadX;
    posicionY += velocidadY;
    
    if(posicionX> width)
    velocidadX +=-1;
      if(posicionY> height)
      velocidadY +=-1;
    if(posicionX < 0 )
    velocidadX +=1;
    if(posicionY < 0 )
    velocidadY +=1;
    
  }

  public boolean interseccion(bola b){
    float distancia = dist(posicionX,posicionY,b.posicionX,b.posicionY);
    
    if(distancia < r + b.r){
      return true;
    }
    else
    {
      return false;
    }
  }
}