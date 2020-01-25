PImage img;
float size = 640;
int pixelDim;
float pixelSize;
HScrollbar hs;
float currentPos = 0;

void setup() {
  size(1280, 640);
  img = loadImage("starbuck.jpg");

  hs = new HScrollbar(width/8, height-8, width/4, 8, 8);
  image(img, 0, 0, size, size);
  noStroke();
}

color getColor(int x, int y) {
  color c;
  float r = 0;
  float g = 0;
  float b = 0;
  for (int i=0; i<pixelSize; i++) {
    for (int j=0; j<pixelSize; j++) {
      c=get(x+i, y+j);
      r += red(c);
      g += green(c);
      b += blue(c);
    }
  }
  return color(r/pixelSize/pixelSize, g/pixelSize/pixelSize, b/pixelSize/pixelSize);
}

void draw() {
  hs.update();
  if (hs.getPos() != currentPos) {
    currentPos = hs.getPos();
    image(img, 0, 0, size, size);
    float sliderVal = hs.getPos();
    pixelDim = (int)map(sliderVal, width/8, width*3/8, 0, size/12);
    pixelSize = size/pixelDim;

    for (int i=0; i<pixelDim; i++) {
      for (int j=0; j<pixelDim; j++) {
        fill(getColor((int)(i*pixelSize), (int)(j*pixelSize)));
        rect(size+i*pixelSize, j*pixelSize, (i+1)*pixelSize, (j+1)*pixelSize);
      }
    }
    hs.display();
  }
}