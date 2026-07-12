void circulosEnPantalla (int R, int G, int B) {
  
  fill(R, G, B);
  float aux = 0;
  float EspacioRellenoAncho = 5;
  float Ancho = width/2 - EspacioRellenoAncho*2;
  
  for (int fila = 0; fila < 31; fila++) {  //va aumentando las filas hacia arriba

    int cantidad = 6 + fila * 3;

    float diametro = Ancho / float(cantidad);

    float espacio = Ancho / float(cantidad);

    float Y = height - diametro * 0.5 - aux - EspacioRellenoAncho;  //se mueven en y

    for (int col = 0; col < cantidad; col++) {

      float x = espacio/2 + col * espacio + EspacioRellenoAncho;  //se mueven en x
      
      if(efecto == 1){  //efecto de los circulos juntandose
        float d = dist(mouseX, mouseY, x+400, Y);
        float deformacion = map(d, 0, 250, 1.3, 1);
        circle(x+400, Y, diametro * deformacion);
        circle(x + 400, Y + 0.5, diametro);
      }
      
      if(efecto == 0){  //se elimina el efecto cuando se aprieta x
        circle(x + 400, Y + 0.5, diametro);
      }
       
    }
    aux = aux + diametro;
  }
}

boolean mouseALaDerecha(){
  return mouseX > width/2;  
}
