void setup() {
size (1000, 1000); 
background (#3DFD53);
  
}

void draw() {

fill(#C4F6CA);
beginShape();
vertex(138, 795);
vertex(222, 381); 
vertex(292, 295); 
vertex(388, 245); 
vertex(486, 242); 
vertex(563, 257); 
vertex(627, 299); 
vertex(664, 367); 
vertex(695, 450); 
vertex(715, 512); 
vertex(734, 582); 
vertex(752, 654); 
vertex(765, 724); 
vertex(775, 795); 

endShape();  
if (keyPressed == true) {
    fill(#C0C0C0);
  } else {
    fill(#FFD700);
  }
  rect(371, 560, 230, 240);
beginShape();
vertex(370,570);
vertex(300,400); 
vertex(430,450); 
vertex(500,280); 
vertex(541,440); 
vertex(650,400); 
vertex(600,570); 
endShape();

}  

void mousePressed () {
if (mousePressed)
textSize (40);
fill(218, 247, 166);
background (22,100,21);
   text ("The mouse is at " + mouseX + ", " + mouseY, 500, 100); 
  
}
