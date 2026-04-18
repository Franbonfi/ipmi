PImage photo;

void setup() {
  size(800, 400);
  photo = loadImage("ArcoDelTriunfo.jpeg");
}

void draw() {
  background(79, 158, 216); 
  image(photo, 0, 0, 400, 400);
  
  fill(85, 75, 74);
  quad(400, 332, 400, 297, 440, 294, 440, 332);
  quad(760, 332, 760, 285, 800, 301, 800, 332);
  triangle(552, 332, 552, 308, 583, 332);
  triangle(616, 332, 646, 303, 646, 332);
  
  fill(62, 76, 92);
  quad(400, 297, 400, 278, 440, 277, 440, 297);
  
  fill(223, 182, 100);
  quad(760, 285, 760, 280, 800, 290, 800, 301);
  
  fill(204, 163, 215);
  quad(400, 180, 400, 165, 800, 155, 800, 178); //R arriba
  
  fill(122, 122, 172);
  quad(400, 199, 400, 180, 800, 186, 800, 204);
  
  fill(206, 200, 179); 
  rect(537, 145, 110, 40); //fondo entre triangulos
  
  fill(56, 42, 30);
  noStroke();
  ellipse(600, 200, 100, 80); //circulo arriba negro
  
  fill(122, 122, 172);
  ellipse(600, 225, 100, 80); //circulo abajo cielo
  
  fill(79, 158, 216);
  rect(552, 222, 100, 50);
  
  fill(204, 163, 215);
  quad(400, 220, 400, 213, 800, 200, 800, 235); //R medio
  quad(546, 282, 546, 277, 648, 275, 648, 285); //R chiquito
  
  fill(206, 200, 179);
  rect(435, 100, 120, 230); //pilar izq
  rect(644, 100, 120, 230); //pilar der
  rect(435, 70, 329, 80); //techo
  
  fill(63, 70, 88);
  rect(400, 330, 400, 85); //piso
  
  fill(180, 165, 155);
  rect(537, 150, 18, 180); //pilarcito izq
  rect(644, 150, 18, 180); //pilarcito der
  
  fill(56, 42, 30);
  rect(549, 150, 8, 180); //pilarcito izq sombra
  rect(643, 150, 8, 180); //pilarcito der sombra
  
  
  fill(121, 98, 84);
  triangle(537, 195, 537, 150, 595, 150); //triangulo izq
  triangle(605, 150, 662, 150, 662, 195); //triangulo der
  
  fill(180, 165, 155);
  rect(450, 160, 75, 30); //cuadro izq
  rect(674, 160, 75, 30); //cuadro der
  rect(433, 143, 333, 7); //linea arriba triangulos
  
  fill(144, 126, 114);
  rect(455, 165, 65, 20); //cuadro chico izq
  rect(679, 165, 65, 20); //cuadro chico der
  ellipse(485, 269, 50, 70);//estatua izq
  ellipse(714, 269, 50, 70);//estatua der
  rect(435, 202, 118, 10); //viga izq abajo de cuadro
  rect(646, 202, 118, 10); //viga der abajo de cuadro 
  
  fill(180, 165, 155);
  stroke(180, 165, 155);
  rect(460, 295, 50, 37); //cuadro de estatua izq
  rect(689, 295, 50, 37); //cuadro de estatua der
  
  fill(144, 126, 114);
  noStroke();
  rect(435, 105, 329, 15); //viga del Medio Arriba
  triangle(420, 105, 435, 105, 435, 131); //arriba izq con viga
  triangle(764, 131, 764, 105, 779, 105); //arriba der con viga 
  
  
  fill(56, 42, 30);
  rect(435, 120, 329, 10); //sombra de la viga MA
  triangle(429, 120, 435, 120, 435, 131); //arriba izq viga chica
  triangle(764, 131, 764, 120, 771, 120); //arriba der viga chica
  
  stroke(144, 126, 114);
  line(435, 295, 537, 295); //linea izq 
  line(662, 295, 764, 295); //linea der
  
  fill(144, 126, 114);
  noStroke();
  rect(435, 70, 329, 10); //viga superior
  triangle(429, 70, 435, 70, 435, 80); //arriba izq viga superior
  triangle(764, 82, 764, 70, 770, 70); //arriba der viga superior
  
  fill(180, 165, 155); 
    rect(435, 80, 15, 25); //pil 1°
        circle(460, 90, 10); //cir 1°
    rect(469, 80, 10, 25); //pil 2°
        circle(488, 90, 10); //cir 2°
    rect(497, 80, 10, 25); //pil 3°
        circle(516, 90, 10); //cir 3°
    rect(525, 80, 10, 25); //pil 4°
        circle(544, 90, 10); //cir 4°
    rect(553, 80, 10, 25); //pil 5°
        circle(571, 90, 10); //cir 5°
    rect(580, 80, 10, 25); //pil 6°
        circle(599, 90, 10); //cir 6°
    rect(608, 80, 10, 25); //pil 7°
        circle(627, 90, 10); //cir 7°
    rect(636, 80, 10, 25); //pil 8°
        circle(655, 90, 10); //cir 8°
    rect(664, 80, 10, 25); //pil 9°
        circle(682, 90, 10); //cir 9°
    rect(691, 80, 10, 25); //pil 10°
        circle(710, 90, 10); //cir 10°
    rect(719, 80, 10, 25); //pil 11°
        circle(738, 90, 10); //cir 11°
    rect(750, 80, 15, 25); //pil 12°
    
  fill(144, 126, 114);
  triangle(426, 202, 435, 202, 435, 212); //viga izq abajo del cuadro
  triangle(764, 212, 764, 202, 773, 202); //viga der abajo del cuadro
  
}
