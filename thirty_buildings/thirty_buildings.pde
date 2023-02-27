void setup() {

  size(1000, 700);
  CocaCola();

  rectMode(CENTER);
  building(900, 700, 150, 500, 5);
  building(75, 700, 100, 500, 3);
  building(675, 700, 200, 300, 6);
}

void CocaCola () {
  background(#ADD8E6);
  //Smoke out of Factory
  noStroke ();
  fill(#5A5A5A);
  //Tower 1
  circle (386, 254, 50);
  circle (387, 215, 50);
  circle (386, 192, 50);
  circle (371, 168, 50);
  circle (387, 148, 50);
  circle (384, 122, 50);
  circle (369, 99, 50);
  circle (387, 84, 50);
  //Tower 2
  circle (509, 149, 50);
  circle (516, 121, 50);
  circle (493, 102, 50);
  circle (515, 87, 50);
  circle (505, 62, 50);
  circle (521, 36, 50);

  //Building
  fill(#AA4A44);
  stroke(1);
  rect (475, 150, 75, 250);
  rect (350, 250, 75, 150);
  noStroke ();
  rect (150, 400, 400, 300);
  stroke(1);
  line(150, 400, 150, 699);
  line(150, 400, 350, 400);
  line(425, 400, 476, 400);
  line(550, 400, 550, 699);

  //Door
  fill (#806517);
  rect (300, 650, 100, 60);
  fill (0);
  circle (340, 680, 5);
  circle (360, 680, 5);
  line(351, 650, 351, 699);

  //Windows
  fill (137, 207, 250);
  rect (175, 560, 150, 60);
  line(250, 560, 250, 621);
  line(175, 590, 325, 590);
  rect (375, 560, 150, 60);
  line(450, 560, 450, 621);
  line(376, 590, 525, 590);
  rect (200, 643, 60, 50);
  line(230, 644, 230, 693);
  line(201, 670, 260, 670);
  rect (440, 643, 60, 50);
  line(440, 670, 500, 670);
  line (470, 643, 470, 693);

  //Coca-Cola Sign
  fill(#F40009);
  rect (230, 436, 250, 80);
  fill(255);
  textSize(48);
  text("Coca-Cola", 265, 490);
}
 //Buildings
void building(float xCenter, float yBottom, float w, int buildingHeight, int numWindows) {
 
  float dh = 50;

 //Buildings
  fill(#808080);
  rect(xCenter, yBottom, w, buildingHeight);
 
 //Windows and Doors 
  fill(#806517);
  rect(xCenter, yBottom - dh/2, 40, 60);

  float step = w/(numWindows + 1);
  float xleft = xCenter - w / 2;
  int window = 1;
  
  while (window <= numWindows) {
    rect(xleft + window * step, yBottom - 80, 20, 30); //You can replace "20" and 30" with "step"
    window = window + 1;
  } 
    //Code that Shows "x" and "y" in my project
  if (mousePressed) {
    System.out.println(mouseX + ", " + mouseY);
  }
}
