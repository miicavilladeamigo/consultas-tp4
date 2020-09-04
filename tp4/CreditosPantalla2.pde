void creditos() {
  textFont(creditos);
  text("Escrito por \n \n \nTraducidos del \nrúnico antiguo\n\n\nAdaptado por", width/5, pantalla2_PosY_Inicial);
  textFont(nombres);
  text("J.K ROWLING\n\n\nHERMIONE \nGRANGER \n\n\n                  Villadeamigo Micaela", width/2, pantalla2_PosY_Inicial);
  if ( pantalla2_PosY_Inicial > width/6) {
    pantalla2_PosY_Inicial--;
  }
}
void keyPressedCreditos() {
  if (keyCode == LEFT) {
    pantalla = 0;
    pantalla2_PosY_Inicial = 650;
    pantalla2_PosY= pantalla2_PosY_Inicial;
  }
}
