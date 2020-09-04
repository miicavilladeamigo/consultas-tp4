//el jugador va a poder navegar con las flechas del teclado.

int pantalla;//valor para saber en que pantalla estoy y a la que debo ir.
int alto = 280;
int ancho = 400;
int botonW = 10;
int botonH = 20;
int pantalla2_PosY_Inicial= 650;
int pantalla2_PosY= pantalla2_PosY_Inicial;

int botonAlto, botonAncho;
int tamW, tamH;

PFont titulo, narracion, boton, nombres, creditos;//variables de las fuentes.
int pantalla2PosY_Inicial;//variable para mover los créditos.

PImage imagenInicial, pantalla1,pantalla3;
int cantImagenes = 5;
int estado;
int imagenW = 255;
int imagenH = 125;


void setup() {
  size(800, 600);

  tamW = width/ ancho;
  tamH = height/alto;
  botonAlto = width/4+12;
  botonAncho = height/20+12;

  //ancho y alto de las imagenes.
  imagenW = width/imagenW;
  imagenH = height/imagenH;

  background(134, 115, 161);//color de fondo

  titulo = loadFont("Roboto-Black-40.vlw");//carga la fuente
  creditos = loadFont("FranklinGothic-Book-35.vlw");
  nombres = loadFont ("FranklinGothic-Heavy-35.vlw");
  narracion = loadFont("BookmanOldStyle-27.vlw");

  //imagen de la pantalla inicial
  pantalla1 = loadImage("puente.jpg");
  imagenInicial = loadImage("fábula-de-los-3-hermanos-harry-potter.jpg");

  surface.setResizable(true);
}
void draw() {
  background(134, 115, 161);//color de fondo
  if (inicio()) {
    inicioPantalla0();
  } else if (pantallaJuego()) {
    introduccion() ;
  } else if (pantallaCreditos()) {
    creditos();
  }else if(pantallaMuerte()){
    muerte();
  }
}

void keyPressed() {
  if ((inicio())) {

    keyPressedPantalla0();
    pantallaJuego();
  } else if (pantallaCreditos()) {
    keyPressedCreditos();
  } else if (pantallaJuego()) {
    keyPressedIntroduccion();
  }else if(pantallaMuerte()){
    keyPressedMuerte();//pantalla3
  }
}
