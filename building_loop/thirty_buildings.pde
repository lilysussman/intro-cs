
void setup () {
  size (1000, 700);
  rectMode(CENTER);
  background(#ADD8E6);

//Help to make center by classmate and Ms. Feng
  for (int thirtyBuilding = 1; thirtyBuilding <= 10; thirtyBuilding = thirtyBuilding + 1) {
    building(thirtyBuilding * 90, 200, (int) random(70, 80), (int) random(100, 250), (int) random(2, 5));
    building(thirtyBuilding * 90, 400, (int) random(70, 80), (int) random(100, 200), (int) random(2, 5));
    building(thirtyBuilding * 90, 700, (int) random(70, 80), (int) random(100, 200), (int) random(2, 5));

    //Another option to do the random buildings (not in rows)
    //for (int thirtyBuilding = 1; thirtyBuilding <= 30; thirtyBuilding = thirtyBuilding + 1) {
    // building( 1000 - thirtyBuilding * 35,
    //  (int) random (200, 700), 150, 300, (int) random (3, 6));

    push ();
    translate (445, 4);
    rectMode(CORNER);
    CocaCola();
    pop ();
  }
}
