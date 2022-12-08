String userChoice;
String computerChoice;
int randomInt;
PImage rockImage;
PImage paperImage;
PImage scissorImage;
PImage tieImage;

void setup () {
  size(700, 700);
  textSize(30);
}

void draw () {
  background (#CBC3E3);
 text ("The winner is....", width/2 - 250, 300);
 
 //When the player and the computar made the same choice (Image Shown)
  if (userChoice == "Rock" && computerChoice == "Rock") {
    tieImage = loadImage("tie.jpg");
    image(tieImage, width/2 - 50, 160, 300, 200);
  } else if (userChoice == "Paper" && computerChoice == "Paper") {
    tieImage = loadImage("tie.jpg");
    image(tieImage, width/2 - 50, 160, 300, 200);
  } else if  (userChoice == "Scissors" && computerChoice == "Scissors") {
    tieImage = loadImage("tie.jpg");
    image(tieImage, width/2 - 50, 160, 300, 200);
  }

  //When user wins (Image Shown)
  if (userChoice == "Rock" && computerChoice == "Scissors") {
    rockImage = loadImage("rock.jpeg");
    image(rockImage, width/2 - 50, 160, 200, 200);
  } else if (userChoice == "Paper" && computerChoice == "Rock") {
    paperImage = loadImage("paper.png");
    image(paperImage, width/2 - 50, 160, 200, 200);
  } else if  (userChoice == "Scissors" && computerChoice == "Paper") {
    scissorImage = loadImage("scissors.jpg");
    image(scissorImage, width/2 - 50, 160, 200, 200);
  }

  //When computer wins (Image Shown)
  if (computerChoice == "Rock" && userChoice == "Scissors") {
    rockImage = loadImage("rock.jpeg");
    image(rockImage, width/2 - 50, 160, 200, 200);
  } else if (computerChoice == "Paper" && userChoice == "Rock") {
    paperImage = loadImage("paper.png");
    image(paperImage, width/2 - 50, 160, 200, 200);
  } else if  (computerChoice == "Scissors" && userChoice == "Paper") {
    scissorImage = loadImage("scissors.jpg");
    image(scissorImage, width/2 - 50, 160, 200, 200);
  }

  //When the player and the computar made the same choice (Text shown)
  if (userChoice == "Rock" && computerChoice == "Rock") {
    text("Results: Draw again ): Press any key to restart", width/2 - 300, 500 );
  } else if (userChoice == "Paper" && computerChoice == "Paper") {
    text("Results: Draw again ): Press any key to restart", width/2 - 300, 500);
  } else if  (userChoice == "Scissors" && computerChoice == "Scissors") {
    text("Results: Draw again ): Press any key to restart", width/2 - 300, 500);
  }

  //When user wins (Text shown)
  if (userChoice == "Rock" && computerChoice == "Scissors") {
    text("Results: User Wins!", width/2 - 200, 500);
  } else if (userChoice == "Paper" && computerChoice == "Rock") {
    text("Results: User Wins!", width/2 - 200, 500);
  } else if  (userChoice == "Scissors" && computerChoice == "Paper") {
    text("Results: User Wins!", width/2 - 200, 500);
  }

  //When computer wins (Text shown)
  if (computerChoice == "Rock" && userChoice == "Scissors") {
    text("Results: Computer Wins!", width/2 - 200, 500);
  } else if (computerChoice == "Paper" && userChoice == "Rock") {
    text("Results: Computer Wins!", width/2 - 200, 500);
  } else if  (computerChoice == "Scissors" && userChoice == "Paper") {
    text("Results: Computer Wins!", width/2 - 200, 500);
  }
  // Computer
  text ("Computer: ", width/2 - 200, 400);
  if (randomInt == 0) {

    computerChoice = "Rock";
  } else if (randomInt == 1) {
    computerChoice = "Paper";
  } else if (randomInt == 2) {
    computerChoice = "Scissors";
  }
  text (computerChoice, width/2 - 200, 450);
  translate (-100, 0);
  fill(255);
  if (userChoice == "Rock") {
    fill(#DA70D6);

    // User
  }
  rect(width / 3, 100, 100, 50);
  fill(255);
  if (userChoice == "Paper") {
    fill(#DA70D6);
  }
  rect(width / 3 + 150, 100, 100, 50);
  fill(255);

  if (userChoice == "Scissors") {
    fill(#DA70D6);
  }
  rect(width / 3 + 300, 100, 100, 50);

  fill(#301934);
  text("Rock", width / 3, 140);
  fill(#301934);
  text("Papers", width / 3 + 150, 140);
  fill(#301934);
  text("Scissors", width / 3 + 300, 140);
}

void mousePressed() {
  if (mouseX <= width/3 &&
    mouseX >= width/3-100 &&
    mouseY >= 100 && mouseY <= 150) {
    userChoice = "Rock";
  } else if (
    mouseX <= width/3 + 150 &&
    mouseX >= width/3 + 50 &&
    mouseY >= 100 && mouseY <= 150) {
    userChoice = "Paper";
  } else if (
    mouseX <= width/3 + 300 &&
    mouseX >= width/3 + 100 &&
    mouseY >= 100 && mouseY <= 150) {
    userChoice = "Scissors";
  } else {
    userChoice = "Not Chosen";
  }
  println(userChoice);

  randomInt = (int)random(0, 3);
}
