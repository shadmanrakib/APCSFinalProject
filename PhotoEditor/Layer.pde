class Layer {
  float x, y, w, h, opacity;
  color[][] layerPixels;
  
  Layer(float w, float h) {
    this.x = 0;
    this.y = 0;
    this.w = w;
    this.h = h;
    this.opacity = 1;
    
    layerPixels = new color[(int)h][(int)w];
    
    for (int row = 0; row < layerPixels.length; row++) {
      for (int col = 0; col < layerPixels[row].length; col++) {
        layerPixels[row][col] = color(255);
      }
    }
  }
  
  Layer(float w, float h, color c) {
    this.x = 0;
    this.y = 0;
    this.w = w;
    this.h = h;
    this.opacity = 1;

    layerPixels = new color[(int)h][(int)w];

    for (int row = 0; row < layerPixels.length; row++) {
      for (int col = 0; col < layerPixels[row].length; col++) {
        layerPixels[row][col] = c;
      }
    }
  }
  
  Layer(PImage img) {
    this.x = 0;
    this.y = 0;
    this.w = img.width;
    this.h = img.height;
    this.opacity = 1;

    layerPixels = new color[(int)h][(int)w];

    for (int row = 0; row < layerPixels.length; row++) {
      for (int col = 0; col < layerPixels[row].length; col++) {
        layerPixels[row][col] = img.get(col,row);
      }
    }
  }
  
  Layer(float w, float h, float opacity) {
    this.x = 0;
    this.y = 0;
    this.w = w;
    this.h = h;
    this.opacity = opacity;
    
    layerPixels = new color[(int)h][(int)w];
    
    for (int row = 0; row < layerPixels.length; row++) {
      for (int col = 0; col < layerPixels[row].length; col++) {
        layerPixels[row][col] = color(255);
      }
    }
  }
  
  Layer(float w, float h, color c, float opacity) {
    this.x = 0;
    this.y = 0;
    this.w = w;
    this.h = h;
    this.opacity = opacity;

    layerPixels = new color[(int)h][(int)w];

    for (int row = 0; row < layerPixels.length; row++) {
      for (int col = 0; col < layerPixels[row].length; col++) {
        layerPixels[row][col] = c;
      }
    }
  }
  
  Layer(PImage img, float opacity) {
    this.x = 0;
    this.y = 0;
    this.w = img.width;
    this.h = img.height;
    this.opacity = opacity;
    
    layerPixels = new color[(int)h][(int)w];

    for (int row = 0; row < layerPixels.length; row++) {
      for (int col = 0; col < layerPixels[row].length; col++) {
        layerPixels[row][col] = img.get(col,row);
      }
    }
  }
  
  color getPixel(int x, int y) {
      x += (int) this.x;
      y += (int) this.y;
      if (x >= 0 && x < layerPixels.length && y >= 0 && y < layerPixels[0].length) {
        return layerPixels[x][y];
      } 
      
      return color(0,0,0,0);
  }
  
  boolean setPixel(int x, int y, color c) {
      if (x >= 0 && x < layerPixels.length && y >= 0 && y < layerPixels[0].length) {
        layerPixels[x][y] = c;
        return true;
      } 
      
      return false;
  }
}
