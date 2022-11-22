int x = 0;
int dx = 6; 
int y = 20;
int dy = 4;
int r = 128; 
int g = 139;
int b = 165;
int bg = 203;

void setup() { 
size (700, 700);
    }
    
void draw() { 
background (bg);
fill (r,g,b); 
circle (x,y,40); 
y = y + dy; 
x = x + dx;

fill(r,g,b);

if(y > 700) {
  dy = -4;
r = 128;
g = 139;
b = 165;
bg = 715;

}
if(x > 700) {
  dx = -6;
  r = 264;
g = 150;
b = 72;
bg = 224;
   }
if (y < 20){  
  dy = 4; 
  r = 787;
g = 54;
b = 180;
bg = 277;
  }
if (x < 20){
  dx = 6;
r = 44;
g = 290;
b = 345;
bg = 300;
  
}
}
