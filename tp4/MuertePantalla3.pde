void muerte() {
  for (int muerteImg = 1; muerteImg <= cantImagenes; muerteImg++) {
    if (estado == muerteImg) {
      pantalla3 = loadImage("muerte(1)"+muerteImg+".jpg");
      image(pantalla3, 0, 0);
    }
  }
  if(frameCount % 6 == 0);
}

void keyPressedMuerte() {
}
