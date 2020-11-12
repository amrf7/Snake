//Clase padre para todas las pantallas 
class Tab {
  PFont font,f; //Variables para la fuentes de la letras de las pantallas de inicio y fin
  Tab(){
    //Selección de fuentes
    font = loadFont("HarlowSolid-48.vlw");
    f=loadFont("Dialog.plain-48.vlw");
    colorMode(HSB);
  }
  
  //Mostrar el fondo negro para las pantallas
  void mostrar(){
    rectMode(CORNER);
    fill(0);
    rect(0,0,width,height);
  }
}

class Inicio extends Tab{ //Clase hija pantalla de inicio
  Inicio(){
    super(); //Herencia de las propiedades de Tab a Inicio
  }
  
  //Método para mostrar la página de inicio
  void mostrar(){
    //Propiedades de la página de inicio
    textFont(font);
    fill(random(255),255,255);
    textSize(100);
    text("Snake",width/4,height/2);
    fill(255);
    textFont(f);
    textSize(20);
    text("Presiona cualquier flecha para empezar",width/7,5*height/8);
  }
  
  //Método para mostrar el tablero de puntaje en la pantalla de juego
  void puntaje(int c, int a){
    //Propiedades del tablero de puntaje
    rectMode(CENTER);
    textFont(f);
    noStroke();
    fill(a/2,255,255);
    rect(width/2,height/40,width,height/12);
    textSize(20);
    fill(0);
    text("Puntaje: "+c,10,25);
  }
}
class GameOver extends Tab{ //Clase hija pantalla GameOver
  GameOver(){
    super(); //Herencia de Tabs a GameOver
  }
  //Método para mostrar la página de fin de juego
  void mostrar(boolean b, int p){ //Booleano que lee si el snake se muere, puntaje se imprime
    if(b){//Condición para que se mustre la página de fin de juego
      //Propiedades de la pégina de fin de juego
      super.mostrar();
      fill(random(255),255,255);
      textFont(font);
      textSize(80);
      text("Game Over",width/7,height/2);
      fill(255);
      textFont(f);
      textSize(20);
      text("Puntaje final: "+p,5*width/12,5*height/8-30);
      text("Presiona espacio para continuar",width/4,5*height/8);
    }
  }
}
