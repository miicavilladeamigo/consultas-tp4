boolean inicio(){
  return (pantalla == 0);
}
boolean pantallaJuego(){
  return pantalla == 1;
}
boolean pantallaCreditos(){
  return pantalla == 2;
}
boolean pantallaMuerte(){
  return pantalla == 3;
}
void inicializar(){
  pantalla = 0;
}
