int x, y; //Variables para la posición de los puntos blancos

snake s; //Variable que invoca al oobjeto snake

points p; //Variable que invoca a los puntos

Inicio i; //Variable que invoca a la página incicial del juego

GameOver g; //Variable que invoca a la página d fin de juego

void setup(){
  size(500,500); //Tamaño especifico de la pantalla de juego (No cambiar)
  
  //Inicialización de las posiciones random (x,y) para los puntos blancos
  x= int(random(18,width-18)); 
  y= int(random(height/12+18,height-18)); 
  
  //Inicialización de la snake, de los puntos y de las páginas de inicio y fin
  s = new snake(); 
  p= new points();
  i=new Inicio();
  g=new GameOver();
}

void keyPressed(){
  //Condición para iniciar el juego
  if(keyCode==UP||keyCode==DOWN||keyCode==LEFT||keyCode==RIGHT){
    background(0);
    //Métodos básicos del objeto snake
    s.mostrar();
    s.mover();
    s.keyPressed();
    p.mostrar(x,y); //Método básico del objeto puntos
    //Métodos para cambiar de posición los puntos y aumentar el tamáno del arreglo del objeto snake
    s.comer(x,y);
    x=s.randomX(x);
    y=s.randomY(y);
    i.puntaje(s.getPuntaje(),x); //Imprimir puntaje en la pantalla de juego
    //Métodos para finalizar el juego según sus condiciones 
    s.reiniciar(s.morir());
    g.mostrar(s.morir(),s.getPuntaje());
    g.mostrar(s.comparar(),s.getPuntaje());
    } 
  //Condición para invocar la pantalla de inicio
  else if(key==' ' || keyPressed==false){
    background(0);
    i.mostrar();
  }
}
void draw(){
  //Método donde se desarrolla todo el juego
  keyPressed();
}
