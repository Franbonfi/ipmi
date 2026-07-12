//CONTENIDOS y pautas a evaluar:

//---------Resolución de 800x400
//---------Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor (circulosEnPantalla (int R, int G, int B))
//---------Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor
//---------Condicionales (if - else).
//---------Ciclos FOR anidados.
//---------Eventos (mouse y/o teclado): modificación de variables.
//---------Algunas funciones matemáticas: dist(), map(), random().
//---------Reiniciar el programa: volver variables a estado original.
//---------Uso de Rotate y Translate
//---------La imagen de referencia debe estar ubicada a la izquierda

//hola profe, te queria decir que hacer los circulos en la funcion propia fue bastante complicado pero despues de probar y buscar en internet, pude resolverlo  }

// ----------- https://youtu.be/5TQPMKDRUm8 -----------

PImage photo;

float desplazamientoX = 0;
float desplazamientoY = 0;

int estado = 0;
int efecto = 0;

void setup() {
  size(800, 400);
  photo = loadImage("imagen12.jpg");
}

void draw() {
  background(255);
  image(photo, 0, 0, 400, 400);

  fill(0);
  noStroke();

  pushMatrix();
    
  translate(desplazamientoX, desplazamientoY);  //logra que los circulos se muevan detras de los colores cuando estos se activan
    
  circulosEnPantalla(0, 0, 0);
    
  popMatrix();

  if (estado == 1){  //cambia de color 1
    if (mouseALaDerecha()) {

      if (mouseY < height/2) {
        circulosEnPantalla(100, 0, 200);
        
      } else {
        circulosEnPantalla(100, 200, 0);
      }
    }
  }
  
  if (estado == 2){  //cambia de color 2
    if (mouseALaDerecha()) {

      if (mouseY < height/2) {
        circulosEnPantalla(200, 0, 100);
        
      } else {
        circulosEnPantalla(200, 100, 0);
      }
    }
  }
  
  if (estado == 3){  //cambia de color 3
    if (mouseALaDerecha()) {

      if (mouseY < height/2) {
        circulosEnPantalla(245, 240, 82);
        
      } else {
        circulosEnPantalla(33, 216, 199);
      }
    }
  }
  
  if (estado > 3){ //vuelve a recorrer los colores
    estado = 1;
  }
}

void keyPressed() {

  if (keyCode == RIGHT && desplazamientoX < 10 && estado != 0) {   //los circulos se mueven para la derecha
    desplazamientoX += 5;
  }

  if (keyCode == LEFT && desplazamientoX > -10 && estado != 0) {   //los circulos se mueven para la iquierda
    desplazamientoX -= 5;
  }
  
  if (keyCode == UP && desplazamientoY > -10 && estado != 0) {     //los circulos se mueven para arriba
    desplazamientoY -= 5;
  }
  
  if (keyCode == DOWN && desplazamientoY < 10 && estado != 0) {    //los circulos se mueven para abajo
    desplazamientoY += 5;
  }
  
  if(key == 'e') {  //se agrega un efecto que hace que los circulos se junten
    efecto = 1;
  }
  
  if(key == 'x') {  //se elimina el efecto de los circulos juntandose
    efecto = 0;
  }

  if (key == 'r') { //se reinicia el programa
     desplazamientoX = 0;
     desplazamientoY = 0;
     estado = 0;
     efecto = 0;
  }
}

void mousePressed() {
  estado++;
}
