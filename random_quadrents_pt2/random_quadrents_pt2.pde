int x;
int y;
float circleSize;
int shapeType;
void setup() {
  size(600, 600);
}

void draw() {
  x = (int) random(600);
  y = (int) random(600);
  
if (x >= 300 && y >= 300) {
fill (#00FFFF);
circle (x, y, 15); }

else if (x >= 300 && y <= 300) {
  fill(#00FF00);
  circle (x, y, 15); }
  
else if (x <= 300 && y >= 300) {
 fill  (#FFFF00);
 circle (x, y, 15); }
 
 else {
fill(#FF0000);
circle (x, y, 15); }
}
