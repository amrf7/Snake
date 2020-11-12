class points{
  //Método para mostrar el ogbeto puntos dentro de la pantalla de juego
  void mostrar(int x, int y){
    //Propiedades de los puntos blancos
    noStroke();
    fill(255);
    ellipseMode(CENTER);
    ellipse(x,y,18,18);
  }
}