//Code taken from Ms. feng, was absent and did not want to miss out on learning the code 

int x;
int y;
float circleSize;
int r;
int g;
int b;
int shapeType;
void setup() {
  size(500, 500);
}

void draw() {
  x = (int) random(500);
  y = (int) random(500);
  circleSize = random(50, 200);
  r = (int) random(255);
  g = (int) random(255);
  b = (int) random(255);
  shapeType = (int) random(3);
  fill(r, g, b);
  if (shapeType == 0) {
    rect(x, y, circleSize, circleSize);
  } else if (shapeType == 1) {
    circle(x, y, circleSize);
  } else {
    textSize(50);
    text("Lily", x, y);
  }
}
