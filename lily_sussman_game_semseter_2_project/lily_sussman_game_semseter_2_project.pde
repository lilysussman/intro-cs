//Project Description

//For my project, I chose to create an avoidence game relating to real life.
//Squirrels common foods include various berries. From there, I plotted my theme being
//trying to collect the berries. To objective of the game is collect the berries, worth various amounts
//of points, in your basket to compete for a high score. Your goal is to avoid the squirrels
//because each squirrel you hit, you loose a life. For each mode, the speeds vary and you have
//differnt amount of lives. When your lives run out, the game is over and you must play again to try and
//get a better score.

//What would you do with more time?

//If I had more time, I maybe would try to attempt to create some levels.
//I eneded up liking my idea to create two differnt modes (a faster one and a slower one),
//but, maybe I would have been able to create many differnt levels, which could have been cool.
//Other then that, I would not change anything with more time.

//What part of the project was especially challenging?

//The part of the project for me that was especially challenging was creating the game mechanism.
//Although we have done arrays before, I had a hard time creating the objects to fall down.
//I started with one variabvle for all 4 objects, the same y postion, and the same x postion.
//This made the code not work asnd had every object in the same postion.
//From this moment, I ened up adding a fixed x posyion to try and minimize overlapping, created a random y
//postion for all. From there, I worked to try and create the feature where if it touched the basket,
//then it would go to the top and restart again in the game

//What part of the project was especially fun? What did you have to figure out on your own?

//The part of the project that I especially enjoyed was getting to be creative with how I come up
//with the game design. I loved getting to mix the knowlege I acumulated from all year, my creative side,
//and my love for indesign(which helped make some of the crafty elements). The fact that I got
//to create such a unique concept and put it to practice was fun. Getting to see my idea come to life
//was also cool to see.

//What helpful input did you get from others?

//From my peers, I got a ton of helpful imput. From my peer review sessions and even showing the
//game to classmates and friends. One example of input I got from another classmate was the idea
//to do the lives instead of a timed game. This idea let me create an easy and hard mode, as I then
//decided to vary the lives. This idea and the ones from the peer review (listed below), all helped me.
//Although they did not help me with the code so to say, their input really helped me bring together my rpoject.

//Code Starts
//Sound (I got the sound from freesounds.com)
SoundFile file;
AudioIn input;
Amplitude analyzer;
import processing.sound.*;

//Images to be inserted (I made the game profile and game over screen, and took the rest of the images off the web)
PImage blackberry;
PImage blueberry;
PImage squirrel;
PImage strawberry;
PImage CompSci; //Game profile
PImage Farm;
PImage Tree;
PImage Basket;
PImage Instructions;
PImage GameOver;


//Variable for start screen
String screen = "menu";
float[] screenxpositions = new float[10];

void setup() {
  size (1000, 600);

  //Forloop to change the game screens
  for (int i = 0; i < screenxpositions.length; i++) {
    screenxpositions[i] = random(100, 300);
  }
  //Sound -
  //Code taken from https://medium.com/measuring-the-great-indoors/sounds-speech-in-processing-df1e908940c
  input = new AudioIn(this, 0);
  file = new SoundFile(this, "video_game_sound.wav");
  file.play();
  input.start();
  analyzer = new Amplitude(this);
  analyzer.input(input);

  //Load images - all images in my "data" section
  Tree = loadImage("Tree.png");
  CompSci = loadImage("CompSci.png");
  Farm = loadImage("Farm.png");
  strawberry = loadImage("strawberry.png");
  Basket = loadImage("Basket.png");
  blueberry = loadImage("blueberry.png");
  squirrel = loadImage("squirrel.png");
  blackberry = loadImage("blackberry.png");
  Instructions = loadImage("Instructions.png");
  GameOver = loadImage("GameOver.png");
}
void draw() {

  //Screen changes if you click the button or name the screen call it
  if (screen == "menu") {
    homepage();
  } else if (screen == "game1") {
    playFarm();
  } else if (screen == "game2") {
    playForest();
  } else if (screen == "instructions") {
    Manual();
  } else if (screen == "gameover") {
    gameOver();
  }
  //Code that Shows "x" and "y" in my project
  if (mousePressed) {
    System.out.println(mouseX + ", " + mouseY);
  }
}

void mousePressed() {
  //Buttons in home screen and instructions/manual
  if (screen == "menu")
    if ( mouseX <= width/3 + 50 &&
      mouseX >= width/3-50 &&
      mouseY >= 448 && mouseY <= 548) {
      screen = "game1";
    } else if (
      mouseX <= width/3 + 200 &&
      mouseX >= width/3 - 50 &&
      mouseY >= 448 && mouseY <= 548) {
      screen = "instructions";
    } else if (
      mouseX <= width/3 + 350 &&
      mouseX >= width/3 - 50 &&
      mouseY >= 448 && mouseY <= 548) {
      screen = "game2";
    }

  //Isha helped me revise my instructions/manual button code - it did not work before, eith her help it did.
  if (screen == "instructions") {
    if (mouseX >= 50  &&
      mouseX <= 390 &&
      mouseY >= 500  && mouseY <= 575 ) {
      screen = "menu";
    }
  }
}
void homepage() {
  //This is my starting screen

  //Background
  background (#ADD8E6);

  //Grass
  noStroke();
  fill (#74B72E);
  rect (0, 300, 1000, 300);

  //Clouds
  fill (255);
  circle (100, 100, 50);
  circle (130, 90, 70);
  circle (180, 80, 100);
  circle (230, 90, 60);
  circle (250, 100, 40);

  fill (255);
  circle (10, 240, 50);
  circle (30, 230, 70);
  circle (80, 220, 100);
  circle (130, 230, 60);
  circle (150, 240, 40);

  fill (255);
  circle (800, 240, 50);
  circle (830, 230, 70);
  circle (880, 220, 100);
  circle (930, 230, 60);
  circle (950, 240, 40);

  fill (255);
  circle (850, 50, 50);
  circle (880, 40, 70);
  circle (930, 30, 100);
  circle (980, 40, 60);

  //Buttons on the homescreen that leads to the game modes and manual.
  stroke (0);
  strokeWeight(7);

  fill(#c83f49);
  circle (width/3, 498, 100); //Button 1 "Play Farm"
  circle (width/3 + 150, 498, 100);//Button 2 "Manual"
  circle (width/3 + 300, 498, 100); //Button 3 "Play Forest"

  fill (0);

  textSize (19);
  text( "Play: Farm ", 293, 500); //Button 1
  textSize (20);
  text( "Manual", 453, 500); //Button 2
  textSize (19);
  text( "Play: Forest ", 589, 500); //Button 3

  //Game title (I designed)
  image(CompSci, 200, 20, 600, 400);
}

void playFarm() {
  //Farm background - game on the "Game Code" tab

  //Sky
  background(#ADD8E6);

  //Grass
  noStroke();
  fill (#74B72E);
  rect(0, 500, 1000, 100 );

  //Clouds
  fill (255);
  circle (100, 100, 50);
  circle (130, 90, 70);
  circle (180, 80, 100);
  circle (230, 90, 60);
  circle (250, 100, 40);

  fill (255);
  circle (10, 240, 50);
  circle (30, 230, 70);
  circle (80, 220, 100);
  circle (130, 230, 60);
  circle (150, 240, 40);

  fill (255);
  circle (800, 240, 50);
  circle (830, 230, 70);
  circle (880, 220, 100);
  circle (930, 230, 60);
  circle (950, 240, 40);

  fill (255);
  circle (850, 50, 50);
  circle (880, 40, 70);
  circle (930, 30, 100);
  circle (980, 40, 60);

  fill (255);
  circle (400, 180, 50);
  circle (430, 170, 70);
  circle (480, 160, 100);
  circle (530, 170, 60);
  circle (550, 180, 40);

  //Sun
  fill (#F9D71C);
  circle (694, 87, 200);

  //Fence (base)
  stroke (#341c02);
  strokeWeight(15);
  line (0, 485, 118, 485);
  line (0, 545, 118, 545);
  line (530, 485, 998, 485);
  line (530, 545, 998, 545);

  //Fence Bars (smaller part)
  line (5, 460, 3, 540);
  line (35, 460, 33, 540);
  line (65, 460, 63, 540);
  line (95, 460, 93, 540);

  //Fence Bars (bigger part)
  line (535, 460, 533, 540);
  line (565, 460, 563, 540);
  line (595, 460, 593, 540);
  line (625, 460, 623, 540);
  line (655, 460, 653, 540);
  line (685, 460, 683, 540);
  line (715, 460, 713, 540);
  line (745, 460, 743, 540);
  line (775, 460, 773, 540);
  line (805, 460, 803, 540);
  line (835, 460, 833, 540);
  line (865, 460, 863, 540);
  line (895, 460, 893, 540);
  line (925, 460, 923, 540);
  line (955, 460, 953, 540);
  line (985, 460, 983, 540);

  //Farm House
  image(Farm, 0, 200, 600, 400);
  PlaygameFarm();
}

void playForest() {
  //Forest background - game on the "Game Code" tab

  //Sky
  background( #BAB86C);
  noStroke();

  //Ground
  fill (#4a6741);
  rect(0, 300, 1000, 500 );

  //Trees
  image(Tree, 0, 0, 1000, 600);
  PlaygameForest();
}

void Manual() {
  //Instructions for the game - includes the game objective, instructions, and game key

  //Background
  background(#D8BFD8);

  //Button
  fill (#ADD8E6);
  stroke (#301980);
  rect(40, 525, 350, 50);
  fill (255);
  textSize(40);
  text("Click to go home", 60, 560);

  //Instructions
  image(Instructions, 150, 20, 700, 500);
}

//Peer Review

//Peer suggestions

//Both my reviewers gave me some suggestions on how to best finish my game when
//I have time. Regarding the requirements, they suggested I add instructions,
//I told them my idea of making it similar to the homepage and they liked it. Also,
//I added a way to get back from manual, which I was trying to do at that moment. Isha
//helped me with that idea as well. Looking at the suggestions again, they both said
//I should add my idea of the different mood to make it harder; this fills the
//requirements and makes the game more fun. They both really enjoyed the idea of
//shifting the number of lives to make it smaller and to make the game a lot faster.

//Peers edits

//I incorporated all of my peer review feedback. All because of Isha and Anoushkas
//help, I was able to successfully fill both the requirements we need for the game and
//ultimately make a cohesive game. With their help, I was able to make my instructions
//page, get help with one of my buttons where I struggled with the with that aspect, and
//was able to make a harder mode based on their suggestions.
