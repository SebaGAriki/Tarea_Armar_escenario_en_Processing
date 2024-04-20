class Espacio{
  private PVector posicion;
  private PImage imagen;

  //----- CONSTRUCTORES -----
  public Espacio(){
    imagen = loadImage("Espacio.png");
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
