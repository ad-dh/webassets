PGraphics pg;
PFont font;

void setup() {
  font = createFont("../ASSETS/Lausanne-300.otf", 1000);
  size(1920, 1080, P2D);
  pg = createGraphics(1920, 1080, P2D);
  pixelDensity(1);
}

void draw() {
  background(#0000ff);
  
  pg.beginDraw();
  pg.fill(#ffffff);
  pg.textFont(font);
  pg.textSize(500);
  pg.pushMatrix();
  pg.translate(mouseX, mouseY);
  pg.textAlign(CENTER, CENTER);
  pg.text("a", 0, 0);
  pg.popMatrix();
  pg.endDraw();
 
  image(pg,0,0);
}
