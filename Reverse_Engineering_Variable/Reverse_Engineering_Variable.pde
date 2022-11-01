//Siddant helped me learn how to do my "x" variable when it got smaller
int x = 500;
int y = 0;
int c = 150;

void setup () {
size(1000, 1000);
;
}

void draw() {
  background(#3281a8);
  fill(#7332a8);
  circle (500,500,300);
  fill(255);
  triangle (150,100, 150, 0, c, 50); 
   c = c + 3;
  square (600, y, 50);
  y = y + 2;
  square (150, 0, x);
   x = x - 6;
 
//Michael Ji helped me learn how to do the repeating 
if (y == 1000){
  y = 0;
}

} 
