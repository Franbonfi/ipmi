PFont fuenteToem; 

PImage inicio;
PImage elpersonaje;
PImage mapa;
PImage animal;
PImage paisaje;
PImage persona;
PImage objvalioso;
PImage sellos;
PImage obteniendoCosme; 
PImage usandoCosme; 
PImage finall;

int pantalla = 0; 
int segundos = 0;

int x = 640;
int x1 = 640;
int x2 = 640;
int x3 = 640;
int x4 = 640;
int x5 = 640;
int x6 = 640;
int x7 = 640;
int x8 = 640;
int x9 = 640;


void setup(){
  size( 640, 480 );
  
  frameRate( 60 );  //fuerzo el ideal
  
  fuenteToem = createFont("Sanseriffic.ttf", 100);  //lo mismo que Tools > Create Font
  textFont( fuenteToem );
  
  inicio = loadImage( "pantalladeinicioToemcopia.jpg" ); //pantalla de inicio

  elpersonaje = loadImage( "elpersonajeprin.png" ); //el personaje

  mapa = loadImage( "mapa2.png" ); //mapa

  animal = loadImage( "animall.png" ); //animal

  paisaje = loadImage( "paisajee.png" ); //paisaje

  persona = loadImage( "person.png" ); //persona

  objvalioso = loadImage( "objetoimpo.png" ); //objeto importante

  sellos = loadImage( "selloscopia.png" ); //sellos

  obteniendoCosme = loadImage( "obteniendocosm.png" ); //obteniendo los cosmeticos

  usandoCosme = loadImage( "usandocosmcopia.png" ); //usando los cosmeticos
  
  finall = loadImage( "finalcopia.png" ); //el final
  
}

void draw() {  
 
 //--------------------PANTALLA PRINCIPAL--------------------
 if (pantalla == 0) {
   
   image(inicio, 0, 0, 640, 480); 
   
   fill(255);
   noStroke();
   rect(280, 433, 80, 30);
   
   fill(0); 
   textSize(20);
   text("PLAY", 300, 455);
   }
 
 //---------------------PANTALLA 1---------------------
 
 if (pantalla == 1){
   
   background(150); //fijarme si dejar este fondo o cambiarlo por unas auroras boreales
   
   image(elpersonaje, x, 80, 236, 300); //355
   
   if (x > 355) {
    x -= 5;
  }
   
   fill(0);
   textSize(17);
   text("En este juego somos un joven fotógrafo \nque decide explorar lugares que están \npor fuera de su ciudad natal, con el \npropósito de conocer y fotografiar \nel TOEM, un fenómeno mágico que \nsolamente se puede experimentar \ndesde lo alto de las montañas.", 40, 180);
  
   stroke(0);
   strokeWeight(3);
   line(0, 30, 640, 30);
   
   fill(255);
   strokeWeight(2);
   rect(463, 20, 20, 80);
   
   if (millis() - segundos > 10000) {
     pantalla = 2; 
     segundos = millis();
   }
 }
 
 //---------------------PANTALLA 2---------------------
 
 if (pantalla == 2){
   background(150); 
   
   noStroke();
   image(mapa, x1, 80, 330, 196); //280
   
   if (x1 > 280) {
    x1 -= 5;
    }
   
   fill(0);
   textSize(17);
   text("\nPara poder llegar a la montaña \ntenemos que hacer un recorrido \nen autobús haciendo paradas en \nvarios lugares. \n\nNuestro punto de partida es \nnuestra casa, en la cual vivimos \ncon nuestra abuela. \n\n\nLa primera parada es OAKLAVILLE, una villa en el medio del bosque.\nLa segunda es STANHAMN, un pequeño puerto con habitantes y una playa turística. \nLa tercera es LOGCITY, una ciudad con muchos habitantes. \nLa cuarta es KIIRUBERG, es la base de la montaña, donde viven pocas personas. \nLa quinta y última parada es LA MONTAÑA, nuestro destino final.", 40, 110); 

   stroke(0);
   strokeWeight(3);
   line(0, 30, 640, 30);
   
   fill(255);
   strokeWeight(2);
   rect(313, 20, 20, 80);
   rect(557, 20, 20, 80);

   if (millis() - segundos > 10000) {
     pantalla = 3; 
     segundos = millis();
   }
  }
 //---------------------PANTALLA 3---------------------
 
 if (pantalla == 3){
   background(150); 
   
   noStroke();
   image(animal, x2, 80, 136, 180); //20
   if (x2 > 20) {
    x2 -= 5;
  }
  
   image(paisaje, x3, 80, 136, 180); //175
   if (x3 > 175) {
    x3 -= 5;
  }
   image(persona, x4, 80, 136, 180); //330
   if (x4 > 330) {
    x4 -= 5;
  }
   image(objvalioso, x5, 80, 136, 180); //480
   if (x5 > 480) {
    x5 -= 5;
  }
   
   fill(0);
   textSize(17);
   text("Mientras recorremos los distintos lugares, vamos fotografiando distintas cosas que \nnos parecen interesantes en el camino, como los animales (que si conseguís \nfotografiar todos los que encuentres durante el viaje conseguís un logro), los paisajes, \nlas personas, los objetos valiosos, entre otras cosas.", 40, 335);
   
   stroke(0);
   strokeWeight(3);
   line(0, 30, 640, 30);
   
   fill(255);
   strokeWeight(2);
   rect(80, 20, 20, 80);
   rect(235, 20, 20, 80);
   rect(387, 20, 20, 80);
   rect(540, 20, 20, 80);
   
   if (millis() - segundos > 10000) {
     
     pantalla = 4; 
     segundos = millis();
     }
   }
 
 //---------------------PANTALLA 4---------------------
 
 if (pantalla == 4){
   background(150); 
   
   noStroke();
   image(sellos, x6, 80, 450, 260); //90
   if (x6 > 90) {
    x6 -= 5;
  }
   
   fill(0);
   textSize(17);
   text("Para lograr ir de parada en parada, se requieren sellos, los cuales se consiguen \ncompletando las misiones que las personas de cada lugar te van dando. \nAl ser un fotógrafo, estas misiones consisten en sacarle fotos a cosas específicas. \nCuando ya conseguís los sellos suficientes, vas de vuelta a la estación para que \nte den el boleto y así poder continuar tu viaje. ", 55, 375);
   
   stroke(0);
   strokeWeight(3);
   line(0, 30, 640, 30);
   
   fill(255);
   strokeWeight(2);
   rect(130, 20, 20, 80);
   rect(480, 20, 20, 80);
   
   if (millis() - segundos > 10000) {
     
     pantalla = 5; 
     segundos = millis();
     }
   }
 
 //---------------------PANTALLA 5---------------------
 
 if (pantalla == 5){
   background(150); 
   
   noStroke();
   image(obteniendoCosme, x7, 80, 270, 180); //40
   if (x7 > 40) {
    x7 -= 5;
  }
   
   image(usandoCosme, x8, 80, 260, 180); //340
   if (x8 > 340) {
    x8 -= 5;
  }
   
   
   fill(0);
   textSize(17);
   text("A medida que vas explorando los distintos escenarios, te podés encontrar con \ncajas sorpresas que están ocultas en varios lugares del mapa, las cuales \ncontienen distintos cosméticos que se pueden usar en el personaje. \nEstas piezas, además de algunas ser decorativas, tienen distintos usos, como \npor ejemplo el casco de buceo que se usa para bucear en una parte específica \nde STANHAMN. Varias de ellas son importantes de encontrar ya que, al no \nconseguirlas, no se podría avanzar en la historia. ", 55, 310);
   
   stroke(0);
   strokeWeight(3);
   line(0, 30, 640, 30);
   
   fill(255);
   strokeWeight(2);
   rect(70, 20, 20, 80);
   rect(258, 20, 20, 80);
   rect(373, 20, 20, 80);
   rect(550, 20, 20, 80);
   
   if (millis() - segundos > 10000) {
     
     pantalla = 6; 
     segundos = millis();
     }
   }
 
 //---------------------PANTALLA 6---------------------
 
 if (pantalla == 6){
   background(150); 
   
   noStroke();
   image(finall, x9, 80, 236, 300); //60
   if (x9 > 60) {
    x9 -= 5;
  }
   
   fill(0);
   textSize(60);
   text("THE END", 365, 140);  
   textSize(20);
   text("Habiendo llegado a la cima de la \nmontaña, podemos apreciar los \ncolores que emana el fenómeno \nmágico que tanto estábamos \nbuscando.", 340, 190); 
   
   stroke(0);
   strokeWeight(3);
   line(0, 30, 640, 30);
   
   fill(255);
   strokeWeight(2);
   rect(170, 20, 20, 80); 
   
   fill(255); //--Boton restart--
   noStroke();
   rect(405, 330, 120, 40);
   
   fill(0);
   textSize(25);
   text("RESTART", 420, 360);
     
   }
}
 
 void mousePressed() {
   
  //-----BOTON "PLAY"-----
   if (pantalla == 0) {
     
     if (mouseX > 280 && mouseX < 360 && mouseY > 433 && mouseY < 463) {
       
       pantalla = 1; 
       
       segundos = millis();
     }
   }
  
  //-----BOTON "RESTART"-----
  
   if (pantalla == 6) {
     
     if (mouseX > 405 && mouseX < 525 && mouseY > 330 && mouseY < 370) { //cambiar cords
       
       pantalla = 0; 
       
      x = 640;
      x1 = 640;
      x2 = 640;
      x3 = 640;
      x4 = 640;
      x5 = 640;
      x6 = 640;
      x7 = 640;
      x8 = 640;
      x9 = 640;
    }
  }
}
