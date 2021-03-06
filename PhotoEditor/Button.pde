abstract class Button extends UiElement {
  private color fontColor;
  private String label;
  int fontSize;
  
  Button(String label, float x, float y, float w, float h, color bgColor, color fontColor) { 
    super(x, y, w, h, bgColor);
    this.label = label;
    this.fontColor = fontColor;
    fontSize = 16;
  }
  
  abstract void pressed();
  
  void display() {
    super.display();
    
    textAlign(LEFT, TOP);
    textSize(fontSize);
    fill(fontColor);
    text(label, super.getX() + ((super.getW() - textWidth(label)) / 2), super.getY() - 2 + ((super.getH() - fontSize) / 2)); 
    
    if(isHovering()) {
      if (mousePressed) 
        pressedIndicator();
      else 
        onHover();
    }
    
  }
  
  boolean isHovering() {
    return super.isHovering();
  }
  
  void onHover() {
    fill(color(255,255,255, 100));
    rect(x, y, w, h);
  }
  
  void pressedIndicator() {
    fill(color(0,0,0, 100));
    rect(x, y, w, h);
  }
  
  String getLabel() {
    return label;
  }
  void setLabel(String other) {
    label = other;
  }
  int getFontSize() {
    return fontSize;
  }
  void setFontSize(int other) {
    fontSize = other;
  }
}
