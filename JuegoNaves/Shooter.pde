class Shooter{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  //----- CONSTRUCTORES -----
  public Shooter(){
    imagen = loadImage("Shooter.png");
  }
  
  //----- METODOS -----
  public void dibujar(){
    image(imagen, posicion.x, posicion.y, width/3.5, height/3.5);
  }
  
  /**
  * Mueve la posicion hacia izquierda o derecha segun lo que indique en el atributo direccion
  * direccion = 0 es izquierda
  * direccion = 1 es derecha
  */
  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x -= this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x += this.velocidad.x;
    }
  }
  
  //----- METODOS ACESSORES -----
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad = velocidad;
  }
}
