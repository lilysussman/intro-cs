//Inspiration for this project came from Andy Wharhol's pop art 

void setup () {
  size(800, 800);
}

void draw() {
  background (255);

  //Background Panels
  fill(#77CC62);
  rect(400, 400, 400, 400);
  fill(#F0D848);
  rect(0, 0, 400, 400);
  fill(#5280C7);
  rect(0, 400, 400, 400);
  fill(#FA8C82);
  rect(400, 0, 700, 400);

//Making the Robot Smaller
  push ();
  translate (50, 0);
  scale(0.5);
  robot ();
  pop ();

  push ();
  translate (50, 400);
  scale(0.5);
  robot ();
  pop ();

  push ();
  translate (450, 0);
  scale(0.5);
  robot ();
  pop ();

  push ();
  translate (450, 400);
  scale(0.5);
  robot ();
  pop ();
}

//Robot Code *Taken from my creature_animation project
void robot() {
  push();
  // Neck Shape
  fill(204, 255, 153);
  circle(300, 350, 200);

  //Lines on the neck
  strokeWeight(2);
  stroke(0);
  line (210, 307, 389, 307);
  line (205, 317, 392, 317);
  line (203, 327, 395, 327);
  line (201, 337, 397, 337);
  line (200, 347, 397, 347);

  //Body Shape
  fill(0, 204, 102);
  rect(150, 350, 300, 200);
  fill(255, 255, 255);

  //Computer on body
  rect(175, 375, 250, 150);
  fill(0, 51, 25);
  fill (0, 0, 0);
  circle (230, 538, 20);
  circle (370, 538, 20);
  strokeWeight(6);
  stroke(0);
  line (241, 541, 361, 541);

  //Text on body "computer"
  textSize(20);
  fill(0, 51, 25);
  text(" ''Hello, I am Crazy Eyes 2007.", 175, 400);
  fill(0, 51, 25);
  textSize(20);
  text("Here from the planet Mars!", 190, 425);
  fill(0, 51, 25);
  textSize(20);
  text("To teach you terminal.''", 200, 450);
  fill(0, 0, 255);
  textSize(20);
  text("STEP 1: learn to use mv", 180, 490);
  fill(102, 0, 204);
  textSize(20);
  text("INCOMING MESSAGE....", 210, 370);

  //Head shape
  noStroke();
  fill (204, 255, 153);
  rect (125, 50, 350, 200);
  rect (100, 200, 400, 100);

  //"Gears" on the side of the head
  rect (95, 80, 50, 100);
  rect (455, 80, 50, 100);
  fill (51, 102, 0);
  rect (70, 90, 30, 70);
  rect (500, 90, 30, 70);
  fill (192, 192, 192);
  circle (70, 125, 30);
  circle (530, 125, 30);

  //Circle decoration on face
  fill (153, 255, 51);
  circle (150, 65, 20);
  circle (450, 65, 20);
  stroke(0);
  strokeWeight(4);

  //Eye "mask" under eyes
  fill (0, 204, 102);
  ellipse(300, 120, 320, 110);

  //Mouth ie tounge
  noStroke();
  fill (0, 0, 0);
  rect(125, 205, 350, 90);
  ellipse(300, 250, 400, 20);
  fill (204, 0, 0);
  ellipse(300, 250, 300, 70);

  //Teeth
  fill (255, 255, 255);
  arc (300, 250, 300, 70, radians(180), radians(360));
  arc (300, 268, 222, 35, radians(0), radians(180));
  strokeWeight (0);

  //Upper Teeth lines
  stroke (0);
  strokeWeight (3);
  line (176, 250, 176, 210);
  line (206, 250, 206, 210);
  line (236, 250, 236, 210);
  line (266, 250, 266, 210);
  line (296, 250, 296, 210);
  line (326, 250, 326, 210);
  line (356, 250, 356, 210);
  line (386, 250, 386, 210);
  line (416, 250, 416, 210);

  //Lower Teeth lines
  line (386, 287, 386, 269);
  line (356, 287, 356, 269);
  line (326, 287, 326, 269);
  line (296, 287, 296, 269);
  line (266, 287, 266, 269);
  line (236, 287, 236, 269);
  line (206, 287, 206, 269);

  //Gold Tooth *placed on teeth already made
  stroke(0);
  fill (#FFD700);
  strokeWeight(0);
  rect(297.5, 267, 27, 18);

  //Arm
  stroke (204, 255, 153);
  strokeWeight (35);
  line (129, 432, 130, 605);
  line (470, 425, 477, 605);
  noStroke();

  //Hand for Arm
  stroke (0);
  strokeWeight(6);
  fill (0, 153, 76);
  arc (478, 624, 50, 70, radians(180), radians(360));
  arc (478, 628, 50, 70, radians(0), radians(180));
  arc (128, 624, 50, 70, radians(180), radians(360));
  arc (128, 628, 50, 70, radians(0), radians(180));

  //Arm Base
  fill(#CCFFE5);
  strokeWeight(2);
  stroke(0);
  circle (108, 387, 60);
  circle (492, 387, 60);
  fill(0, 102, 51);
  strokeWeight(2);
  stroke(0);
  rect (110, 350, 40, 80);
  rect (450, 350, 40, 80);

  //Legs
  stroke (204, 255, 153);
  strokeWeight (90);
  line (225, 620, 225, 749);
  line (376, 622, 376, 749);
  noStroke();

  //Shorts
  strokeWeight(3);
  stroke(0);
  fill (128, 255, 0);
  rect (151, 553, 150, 70);
  rect (300, 553, 150, 70);

  //Leg one (lines)
  stroke (0);
  strokeWeight (5);
  line (181, 649, 270, 649);
  line (181, 689, 270, 689);
  line (181, 729, 270, 729);

  //Leg two (lines)
  line (333, 649, 421, 649);
  line (333, 689, 421, 689);
  line (333, 729, 421, 729);

  //Eyes
  fill(0, 128, 255);
  strokeWeight(20);
  stroke(255, 255, 255);
  circle(230, 120, 75);
  circle(370, 120, 75);

  pop();
}
