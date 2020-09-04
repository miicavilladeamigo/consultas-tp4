void inicioPantalla0() {
  if (inicio()) {
    image(imagenInicial, 0, 0, width, height);
    textFont(titulo);
    textAlign(CENTER);
    fill(255);
    text("Los cuentos de Beedle el Bardo\nLa fabula de los cinco hermanos", width/2, height/10);
    fill(108, 70, 117);
    rect(width/20, height-100, botonAlto, botonAncho, 12);
    fill(255);
    text("Jugar", width/6.5, height-60);
    fill(108, 70, 117);
    rect(width/2-10, height-100, botonAlto, botonAncho, 12);
    fill(255);
    text("Créditos", width/2+90, height-60);
  }
}
void keyPressedPantalla0() {
  if (keyCode == LEFT) {
    pantalla = 1;
  }else if (keyCode == RIGHT){
    pantalla = 2;
  }
} 
