//Variables for game
int basketx = 650; //Basket
int baskety = 460; //Basket
int score = 0; //Game score
int livesfarm = 20; //Lives
int livesforest = 10; //Lives
int highscore = 0; //Highscore

float speedsfarm = random (4, 6); //Speed
float  speedsforest = random (7, 9); //Speed
float [] xposofstrawberries = { 200, 300, 400, 500, 600 }; //X postion for strawberries
float [] dropYofstrawberries = { random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800)}; //Y postion for strawberries
float [] xposofblueberries = {140, 340, 480, 850, 900}; //X postion for blueberries
float [] dropYofblueberries = { random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800)}; //Y postion for blueberries
float [] xposofblackberries = {175, 375, 575, 775, 900 }; //X postion for blackberries
float [] dropYofblackberries = { random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800)}; //Y postion for blackberries
float [] xposofsquirrel = {12, 200, 300, 475, 870, }; //X postion for squirrel
float [] dropYofsquirrel = { random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800), random(1, 800)}; //Y postion for squirrel
float [] highscores = new float[0]; //Used for high score to keep the score each round

//Farm function (easier mode)
void PlaygameFarm() {
  for (int y = 0; y <= 4; y = y +1) {

    //Strawberry Used for game
    image(strawberry, xposofstrawberries [y], dropYofstrawberries [y], 100, 100);

    //Aray for strawberries to reset
    dropYofstrawberries [y] = dropYofstrawberries[y] + speedsfarm;
    if (dropYofstrawberries [y] > 600) {
      dropYofstrawberries [y] = 0;
      speedsfarm  = random (4, 6);
    }
    //If strawberries touching the basket - score is added and object resets
    float dstrawberry = dist(xposofstrawberries[y]  + 100/2, dropYofstrawberries[y] + 100/2, getBasketXfarm() + 150/2, baskety);
    if (dstrawberry < 50 + 75 ) {
      dropYofstrawberries [y] = 0;
      score = score + 3;
    }

    //Blueberry Used for game
    image(blueberry, xposofblueberries [y], dropYofblueberries [y], 100, 100);

    //Aray for blueberries to reset
    dropYofblueberries [y] = dropYofblueberries[y] + speedsfarm;
    if (dropYofblueberries [y] > 600) {
      dropYofblueberries [y] = 0;
      speedsfarm  = random (4, 6);
    }

    //If blueberries touching the basket - score is added and object resets
    float dblueberry = dist(xposofblueberries[y]  + 100/2, dropYofblueberries[y] + 100/2, getBasketXfarm() + 150/2, baskety);
    if (dblueberry < 50 + 75 ) {
      dropYofblueberries [y] = 0;
      score = score + 2;
    }

    //Blackberry Used for game
    image(blackberry, xposofblackberries [y], dropYofblackberries [y], 100, 100);

    //Aray for blackberries to reset
    dropYofblackberries [y] = dropYofblackberries[y] + speedsfarm;
    if (dropYofblackberries [y] > 600) {
      dropYofblackberries [y] = 0;
      speedsfarm  = random (4, 6);
    }
    //If blackberries touching the basket - score is added and object resets
    float dblackberry = dist(xposofblackberries[y]  + 100/2, dropYofblackberries[y] + 100/2, getBasketXfarm() + 150/2, baskety);
    if (dblackberry < 50 + 75 ) {
      dropYofblackberries [y] = 0;
      score = score + 1;
    }

    //Squirrel Used for game
    image(squirrel, xposofsquirrel [y], dropYofsquirrel [y], 100, 100);

    //Aray for squirrel to reset
    dropYofsquirrel [y] = dropYofsquirrel[y] + speedsfarm;
    if (dropYofsquirrel [y] > 600) {
      dropYofsquirrel [y] = 0;
      speedsfarm  = random (4, 6);
    }

    //If squirrels are touching the basket - score is added and object resets
    float dsquirrel = dist(xposofsquirrel[y]  + 100/2, dropYofsquirrel[y] + 100/2, getBasketXfarm() + 150/2, baskety);
    if (dsquirrel < 50 + 75 ) {
      dropYofsquirrel [y] = 0;
      livesfarm = livesfarm - 1;
    }

    //Scoreboard

    //Score
    push ();
    fill (#00008B);
    textSize(50);
    text ("Score is: " + score, 27, 50);
    pop();

    //Lives
    push ();
    fill (#00008B);
    textSize(50);
    text ("Lives are: " + livesfarm, 27, 100);
    pop();

    //Basket Used for game
    image(Basket, getBasketXfarm(), baskety, 350, 150);
  }

  //Highscore code
  if (livesfarm <= 0) {
    highscores = append(highscores, score);
    score = 0;
    livesfarm = 20;
    background(255);
    screen = "gameover";
  }
}

//Game over page that occurs when all lives are lost
void gameOver() {
  background (#D8BFD8);
  image(GameOver, 250, 20, 500, 300);
  stroke(255);
  fill (#ADD8E6);
  rect (120, 361, 800, 120 );
  fill ( 255);
  textSize(100);
  highscore = (int)max(highscores);
  text ("High score is...."+ highscore, 150, 448 );
  textSize(55);
  fill (#301980);
  text ("Click anywhere to go back to the homepage", 5, 580 );

  //If clicked on screen, brough back to menu (able to keep playing game)
  if (mousePressed == true) {
    screen = "menu";
  }
}
//In order for basket to recognize score
float getBasketXfarm() {
  return min(mouseX, basketx);
}

//Forest function (easier mode)
void PlaygameForest() {
  for (int y = 0; y <= 4; y = y +1) {

    //Strawberry Used for game
    image(strawberry, xposofstrawberries [y], dropYofstrawberries [y], 100, 100);

    //Aray for strawberries to reset
    dropYofstrawberries [y] = dropYofstrawberries[y] + speedsforest;
    if (dropYofstrawberries [y] > 600) {
      dropYofstrawberries [y] = 0;
      speedsforest = random (7, 9);
    }
    //If strawberries touching the basket - score is added and object resets
    float dstrawberry = dist(xposofstrawberries[y]  + 100/2, dropYofstrawberries[y] + 100/2, getBasketXforest() + 150/2, baskety);
    if (dstrawberry < 50 + 75 ) {
      dropYofstrawberries [y] = 0;
      score = score + 3;
    }

    //Blueberry Used for game
    image(blueberry, xposofblueberries [y], dropYofblueberries [y], 100, 100);

    //Aray for blueberries to reset
    dropYofblueberries [y] = dropYofblueberries[y] + speedsforest;
    if (dropYofblueberries [y] > 600) {
      dropYofblueberries [y] = 0;
      speedsforest = random (7, 9);
    }

    //If blueberries touching the basket - score is added and object resets
    float dblueberry = dist(xposofblueberries[y]  + 100/2, dropYofblueberries[y] + 100/2, getBasketXforest() + 150/2, baskety);
    if (dblueberry < 50 + 75 ) {
      dropYofblueberries [y] = 0;
      score = score + 2;
    }

    //Blackberry Used for game
    image(blackberry, xposofblackberries [y], dropYofblackberries [y], 100, 100);

    //Aray for blackberries to reset
    dropYofblackberries [y] = dropYofblackberries[y] + speedsforest;
    if (dropYofblackberries [y] > 600) {
      dropYofblackberries [y] = 0;
      speedsforest = random (7, 9);
    }
    //If blackberries touching the basket - score is added and object resets
    float dblackberry = dist(xposofblackberries[y]  + 100/2, dropYofblackberries[y] + 100/2, getBasketXforest() + 150/2, baskety);
    if (dblackberry < 50 + 75 ) {
      dropYofblackberries [y] = 0;
      score = score + 1;
    }

    //Squirrel Used for game
    image(squirrel, xposofsquirrel [y], dropYofsquirrel [y], 100, 100);

    //Aray for squirrel to reset
    dropYofsquirrel [y] = dropYofsquirrel[y] + speedsforest;
    if (dropYofsquirrel [y] > 600) {
      dropYofsquirrel [y] = 0;
      speedsforest = random (7, 9);
    }

    //If squirrels are touching the basket - score is added and object resets
    float dsquirrel = dist(xposofsquirrel[y]  + 100/2, dropYofsquirrel[y] + 100/2, getBasketXforest() + 150/2, baskety);
    if (dsquirrel < 50 + 75 ) {
      dropYofsquirrel [y] = 0;
      livesforest = livesforest - 1;
    }

    //Scoreboard

    //Score
    push ();
    fill (#00008B);
    textSize(50);
    text ("Score is: " + score, 27, 50);
    pop();

    //Lives
    push ();
    fill (#00008B);
    textSize(50);
    text ("Lives are: " + livesforest, 27, 100);
    pop();

    //Basket Used for game
    image(Basket, getBasketXforest(), baskety, 350, 150);
  }

  //Highscore code
  if (livesforest <= 0) {
    highscores = append(highscores, score);
    score = 0;
    livesforest = 10;
    background(255);
    screen = "gameover";
  }
}

//Game over page that occurs when all lives are lost
void gameOver2() {
  background (#D8BFD8);
  image(GameOver, 250, 20, 500, 300);
  stroke(255);
  fill (#ADD8E6);
  rect (120, 361, 800, 120 );
  fill ( 255);
  textSize(100);
  highscore = (int)max(highscores);
  text ("High score is...."+ highscore, 150, 448 );
  textSize(55);
  fill (#301980);
  text ("Click anywhere to go back to the homepage", 5, 580 );

  //If clicked on screen, brough back to menu (able to keep playing game)
  if (mousePressed == true) {
    screen = "menu";
  }
}

//In order for basket to recognize score
float getBasketXforest() {
  return min(mouseX, basketx);
}
