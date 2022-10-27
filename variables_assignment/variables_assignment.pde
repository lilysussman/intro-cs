int x = 0;
int y = 900;

void setup() {
  
size (1000,1000);
}

void draw() {   
background(100);
fill (#3EB489);
  square(x,0,100);
  square(100,y,100);
  x = x + 1;
  y = y - 1;
}
