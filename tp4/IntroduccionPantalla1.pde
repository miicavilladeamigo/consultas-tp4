void introduccion() {
  image(pantalla1, 0, 0, width, height);
  textFont(narracion);
  fill (65, 105, 255);
  text("Había una vez tres hermanos que viajaban a la hora\ndel crepúsculo por una solitaria y sinuosa carretera.\n" 
    + "Los hermanos llegaron a un río demasiado profundo\npara vadearlo" + " y demasiado peligroso para cruzarlo\na nado." +
    "Pero como los tres hombres eran muy diestros \nen las artes mágicas, no tuvieron más que agitar sus varitas\n\n\n¡Eligue un hechizo!\n(Presiona la tecla A para Accio o P para aparicion)", width/2, height/10);
  fill(108, 70, 117);
  rect(width/20, height-100, botonAlto, botonAncho, 12);
  fill(255);
  textFont(titulo);
  text("Accio", width/6.5, height-60);
  fill(108, 70, 117);
  rect(width/2-10, height-100, botonAlto, botonAncho, 12);
  fill(255);
  text("Aparición", width/2+90, height-60);
}


void keyPressedIntroduccion() {
  //Al precionar la tecla izquierda, vuelve a la pantalla anterior.
  if (keyCode == LEFT) {
    pantalla = 0;
    //al precionar la tecla a, se elige el hechizo Accio
    //al precionar la tecla P, se elige el hechizo Aparicion
  } else if (keyCode == 'a' || keyCode == 'A' || keyCode == 'p' || keyCode == 'P') {
    pantalla = 3;
  }
}
