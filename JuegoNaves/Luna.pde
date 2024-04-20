class Luna{
  private PVector posicion;
  private PImage imagen;

  //----- CONSTRUCTORES -----
  public Luna(){
    imagen = loadImage("Luna.png");
  }
  
  //----- METODOS -----
  public void dibujar(){
    image(imagen, posicion.x, posicion.y, width, height);
  }
  
  //----- METODOS ACESSORES -----
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
}
