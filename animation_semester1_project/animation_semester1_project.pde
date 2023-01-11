//Comunication Comment

//What your animation does?

//For this animation project, I decided to make an animation of a car that seems to be
//moving at two differnt times of day. In this animation, I wanted a scenic background with hills moving
//behind a red car that changes brand names. I also liked the idea of a mountain in the background.
//With my project, I wanted to include a differnt time of the day, so I chose to make a sunset.
//With my animation, it looks like the car moves, but really it is ject the road marks and the hills in the background.
//Some details of the animation include... the mountain changes postion each time, the light turns on when the mouse is clicked and a sunset pops up
//also, the name in the car randomly changes each click and changes to a real car brand name and a
//fake car brand name I made. Lastly, I added a sun that randomly cahnges its starting point along the "x axis" 
//just like the mountains do. Based on it's location it randomly goes to, the shade of yellow will differ. 

//What you tried that ended up not working? 

//Orginally I wanted to try and include clouds that randomly shifted dirrections. I think I would be able to do some actual code, 
//but I was having a hard time coming up with the deisgn of the cloud and how to properly execute it. 
//Other then that, I felt like after some persistence, most things I thought I couldnt do (example, fixing the background which had some problems
// and to randomly move the mountain).

//What is your inspiration for this project?

//My inspiration from this project came from 2 places. First, I saw a youtube video online when looking
//up processing animation examples (linked below) and I thought it was cool and looked interesting to code.
//after watching the video, that had way too complex of codes, I wanted to create something that
//has a moving background, but it really just stationary. After somethinking I came up with a car.
//My second form of inspiration came after watching some cartoons with my brother. After seeing the animated, cartoony
//versions on TV, I wanted to create my own for kids to see the power of programing and for them to get inspired like I did.



//Look at https://www.youtube.com/watch?v=g0UPwrtShUI for inspiration *NO CODE WAS TAKEN, JUST IDEA

//Road Marks
float road1 = 0;
float road2 = 150;
float road3 = 300;
float road4 = 450;
float road5 = 600;
float dx = 5;

//Hills
int hill1 = 0;
int hill2 = 200;
int hill3 = 400;
int hill4 = 600;
int hill5 = 800;
int ldx = 2;

//Mountains
float mountain = random(0, 400);

//Car //This line of code taken from the processing website
String[] words = { "Lily's Auto", "Sussman Motors ", "Porshe", "Ferrari" };
int index = int(random(4));
boolean mouseclicked = false;

//Sun
float sun = random (100, 500);

void setup() {
  size (700, 700);
}

void draw() {
  //Background
  background (#ADD8E6);

  //Background Change
  if (mouseclicked) {
    background (#6a0d83);
    noStroke();
    fill (#FFCA3E);
    rect(0, 325, 700, 75);
    fill (#eeaf61);
    rect(0, 250, 750, 75);
    fill (#fb9062);
    rect(0, 175, 700, 75);
    fill (#ce4993);
    rect(0, 50, 700, 75);
    fill (#ee5d6c);
    rect(0, 100, 700, 75);
  }

  //Sun
  if ( sun < 200) {
    fill(#FFE87C);
  } else if ( sun < 400 ) {
    fill(#FCD12A);
  } else {
    fill(#ffff99);
  }
  if (mouseclicked) {
    fill (#00FFFFFF);
  }
  circle (sun, 94, 150);

  //Mountain
  push ();
  translate(mountain, 0);
  stroke(1);
  fill(#52AAB8);
  triangle(120, 400, 232, 80, 344, 400);
  fill(255);
  beginShape();
  vertex(205, 163);
  vertex(218, 155);
  vertex(228, 166);
  vertex(237, 153);
  vertex(246, 164);
  vertex(253, 142);
  vertex(233, 83);
  endShape();
  pop ();

  //Hill
  stroke(1);
  fill(#808000);
  ellipse(hill1, 400, 200, 200);
  if (hill1 == -200) {
    hill1 = 0;
  }
  hill1 = hill1 - ldx;

  ellipse(hill2, 400, 200, 200);
  if (hill2 == 0) {
    hill2 = 200;
  }
  hill2 = hill2 - ldx;

  ellipse(hill3, 400, 200, 200);
  if (hill3 == 200) {
    hill3 = 400;
  }
  hill3 = hill3 - ldx;

  ellipse(hill4, 400, 200, 200);
  if (hill4 == 400) {
    hill4 = 600;
  }
  hill4 = hill4 - ldx;

  ellipse(hill5, 400, 200, 200);
  if (hill5 == 600) {
    hill5 = 800;
  }
  hill5 = hill5 - ldx;

  //Road
  fill(#808080);
  rect(0, 400, 700, 350);

  //Road Marks
  fill(#FFDB58);

  rect(road1, 535, 100, 25);
  if (road1 == -150) {
    road1 = 0;
  }
  road1 = road1 - dx;

  rect(road2, 535, 100, 25);
  if (road2 == 0) {
    road2 = 150;
  }
  road2 = road2 - dx;

  rect(road3, 535, 100, 25);
  if (road3 == 150) {
    road3 = 300;
  }
  road3 = road3 - dx;

  rect(road4, 535, 100, 25);
  if (road4 == 300) {
    road4 = 450;
  }
  road4 = road4 - dx;

  rect(road5, 535, 100, 25);
  if (road5 == 450) {
    road5 = 600;
  }
  road5 = road5 - dx;

  //Light changing on car
  if (mouseclicked) {
    fill(#FFFF00);
  } else {
    fill(0);
  }
  circle(359, 442, 20);

  //Car
  fill (#ff2800);
  rect(61, 420, 300, 75);
  fill(255);
  rect(250, 430, 110, 25);
  fill (#ff2800);
  rect(101, 430, 50, 50);
  rect(180, 430, 50, 50);
  fill(0);
  rect(106, 454, 10, 5);
  rect(185, 454, 10, 5);
  fill(#ff2800);
  beginShape();
  vertex(96, 422);
  vertex(148, 367);
  vertex(272, 367);
  vertex(316, 422);
  endShape();
  fill(#4fc3f7);
  beginShape();
  vertex(239, 422);
  vertex(233, 367);
  vertex(272, 367);
  vertex(316, 422);
  vertex(241, 422);
  endShape();
  fill(0);
  circle(115, 497, 40);
  circle(300, 497, 40);
  fill(255);
  circle(114, 498, 20);
  circle(301, 498, 20);
  fill(#8b0000);
  textSize (15);
  text (words[index], 254, 448);
  println (words[index]); //This line of code taken from the processing website

  //Code that Shows "x" and "y" in my project
  if (mousePressed) {
    System.out.println(mouseX + ", " + mouseY);
  }
}
void mousePressed () {
  mouseclicked = true;
}
