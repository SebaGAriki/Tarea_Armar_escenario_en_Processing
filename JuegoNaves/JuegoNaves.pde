private Shooter nave;
private Enemigo enemigo;
private Luna luna;
private Espacio espacio;

public void setup(){
  size(500, 500);
  imageMode(CENTER);
  
  nave = new Shooter();
  nave.setPosicion(new PVector(width/2, height/5*3));
  nave.setVelocidad(new PVector(width/62, 0));
  
  enemigo = new Enemigo();
  enemigo.setPosicion(new PVector(1, height/16));
  enemigo.setVelocidad(new PVector(width/62, 0));
  
  luna = new Luna();
  luna.setPosicion(new PVector(width/2, height/2));
  
  espacio = new Espacio();
  espacio.setPosicion(new PVector(width/2, height/2));
}

public void draw(){
  /*
  * el 140 es para hacer la imagen un poco mas oscura 
  * y el 70 es la opacidad del fondo esto provoca ese efecto de estela de las naves (me salio sin queres pero me gusto)
  */
  tint(140, 70); 
  espacio.dibujar();
  
  noTint();
  luna.dibujar();
  
  nave.dibujar();
  mousePressed(); //si no pongo mousePressed en el draw no funciona al mantener el click
  
  enemigo.dibujar();
  enemigo.mover();
  enemigo.actualizarDireccion();
}

public void mousePressed(){
  if(mousePressed && (mouseButton == LEFT)){
    nave.mover(0);
  }
  if(mousePressed && (mouseButton == RIGHT)){
    nave.mover(1);
  }
}
