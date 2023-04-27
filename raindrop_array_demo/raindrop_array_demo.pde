float[] dropY = {};
float[] speeds = {};


int puddlex = 100;
int puddley = 30;


void setup() {
  size(1000, 600);
}

void draw() {
  background(#ADD8E6);

  //First loop to draw and randomize y (raindrops)
  fill(#00008B);
  for (int y = 1; y <= dropY.length; y = y + 1) {
    raindrop(0 + y * 100, dropY[y -1 ], 50, 50);
    dropY [y -1] = dropY [y -1] + speeds[y-1];
    if (dropY [y -1] > 700) {
      dropY [y -1] = 0;
      speeds [y-1] = random (1, 4);
    }

    //Puddle Growth
    ellipse (500, 600, puddlex, puddley);
    if (dropY [y - 1] > 600) {
      puddlex = puddlex + 1;
    }
    if (dropY [y - 1] > 600) {
      puddley = puddley + 1;
    }

    //Depth Size...
    push ();
    fill (255);
    textSize(100);
    text ("Depth is:" + puddley/2, 300, 100);
    pop ();
  }
}
void mousePressed() {
  dropY = append(dropY, mouseY );
  speeds = append(speeds, random(1,10));
}


void raindrop(float xCenter, float yCenter,
  float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2,
    yCenter, xCenter, yCenter - h);

  arc(xCenter, yCenter, w, h, 0, PI);
}
