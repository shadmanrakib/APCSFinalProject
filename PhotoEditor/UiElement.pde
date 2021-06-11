class UiElement {
 
 float x, y, w, h;
 color bgColor;
 
 UiElement(float x, float y, float w, float h, color bgColor) {
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.bgColor = bgColor;

 }
 
 void display() {
   fill(bgColor);
   noStroke();
   rect(x, y, w, h);
 }

 boolean isHovering() {
   return mouseX >= x && mouseX < x + w && mouseY >= y && mouseY < y + h;
 }
 
 float getX() {
   return x;
 }
 float getY() {
   return y;
 }
 float getW() {
   return w;
 }
 float getH() {
   return h;
 }
 color getBGColor() {
   return bgColor;
 }
 void clicked() {};
 void released() {};
 void pressed() {};
 void dragged() {};
 
}
