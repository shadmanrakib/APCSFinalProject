class FilterScreen extends Screen {
  ArrayList<UiElement> elements;
  
  FilterScreen() {
      elements = new ArrayList<UiElement>();
      Toolbar toolbar = new Toolbar();
      Sidebar sidebar = new Sidebar();
      elements.add(toolbar);
      elements.add(sidebar);
  }
  void display() {
    background(DARK4);
    for (UiElement e : elements) {
        e.display();
    }
    if (canvas != null) {
       canvas.display(); 
    }
  }
  void click() {
    for (UiElement e : elements) {
      e.click();
    }
  }
}
class Toolbar extends UiElement {
  private int x, y, w, h;
  private color c;
  private ArrayList<Button> toolbarButtons = new ArrayList<Button>();
  
  Toolbar() { 
    x = 0;
    y = 0;
    w = 1366;
    h = 64;
    c = DARK2;
    
    TestButton testBtn = new TestButton();
    ContinueButton cont = new ContinueButton();
    toolbarButtons.add(testBtn);
    toolbarButtons.add(cont);
  }
  
  void click() {
    if(mouseX >= x && mouseX < x + w && mouseY >= y && mouseY < y + h) {
       println("Toolbar clicked"); 
       
       for(Button b : toolbarButtons) {
          b.click(); 
       }
    }
  }
  
  void display() {
    fill(c);
    noStroke();
    rect(x, y, w, h);
    
    for(Button b : toolbarButtons) {
          b.display(); 
    }
  }
  
  class TestButton extends Button {
    TestButton() {
      super("Back", 12, 12, 100, 40,DARK1, color(255));
    }
    
    void click() {
      if(mouseX >= super.x && mouseX < super.x + super.w && mouseY >= super.y && mouseY < super.y + super.h) {
        scene--;
      }
    }
    
    
  }
  class ContinueButton extends Button {
    ContinueButton() {
      super("Continue", 1230, 17, 117, 31, PRIMARY, color(255));
    }
    void click() {
      if(mouseX >= super.x && mouseX < super.x + super.w && mouseY >= super.y && mouseY < super.y + super.h) {
        scene++;
      }
    }
  }
}
