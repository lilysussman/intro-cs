void setup() {
  size(700, 700);

  PFont font;
  font = loadFont("SignPainter-HouseScriptSemibold-48.vlw");
  textFont(font);
}

void draw () {
  background(#ADD8E6);

  //Smoke out of Factory
  noStroke ();
  fill(#5A5A5A);
    //tower 1
  circle (386, 254, 50);
  circle (387, 215, 50);
  circle (386, 192, 50);
  circle (371, 168, 50);
  circle (387, 148, 50);
  circle (384, 122, 50);
  circle (369, 99, 50);
  circle (387, 84, 50);
    //tower 2
  circle (509, 149, 50);
  circle (516, 121, 50);
  circle (493, 102, 50);
  circle (515, 87, 50);
  circle (505, 62, 50);
  circle (521, 36, 50);

  //building
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

  //door
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
  text("Coca-Cola", 265, 490);

  //Code that Shows "x" and "y" in my project
  if (mousePressed) {
    System.out.println(mouseX + ", " + mouseY);
  }
}
