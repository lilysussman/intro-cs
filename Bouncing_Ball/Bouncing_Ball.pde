int x = 25;
int dx = 1; 
int y = 25;
int paddleY = 50;

void setup() { 
size (1000, 700);
    }
    
void draw() { 
background (#FFD700);
fill (255); 
circle (x,y,50); 
//rect (30, paddleY, 20, 80); 
x = x + dx; 
if(x > 676) {
  dx = -1;
   }
y = y + dx;
if (x < 25){  
  dx = 1; 
  }
  println(x); 
}

//void keyPressed() {
 // if (keyCode == UP) { 
  //  paddleY = paddleY - 20; 
    //  if (keyCode == DOWN) { 
    //paddleY = paddleY + 20; 
