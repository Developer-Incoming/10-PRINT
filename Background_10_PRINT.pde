int x = 0;
int y = 0;
int gridSize = 5;
float probability = 0.5;
float col = 0;
float colAdderMain = 0.00001056;
float colAdder = colAdderMain;
int speed = 45;

int mode = 0;

    /*/     /*//*//*/   /*/
   /*/     /*/   /*/   /*/
  /*//*/  /*//*//*/   /*//*/

void setup() {
  //size(400, 400);
  fullScreen();
  background(0);
  colorMode(HSB, 1);
}

void draw() {
  for (int i = 0;i < speed;i++) {
    if (col > 1) {
      colAdder = -colAdderMain;
    }else if (col < 0){
      colAdder = colAdderMain;
    }
    col+=colAdder;
    stroke(col, 1, 1);
    if (random(1) < probability) {
      line(x, y, x + gridSize, y + gridSize);
    } else {
      line(x, y + gridSize, x + gridSize, y);
    }
    x = x + gridSize;
    if (x > width) {
      x = 0;
      y = y + gridSize;
    }
    if (y > height) {
      y=y;
    }
  }

}

void keyPressed() {
  if (keyCode == 32) {
    saveFrame("Images/Shot###.png");
  }
}
