//Kayla Langarica|Aug 28 2025| Computer Timeline

void setup () {
  size(900, 400);
  background(180);
}

void draw () {
  background(234, 185, 207);
  drawRef();
  drawHistEvent(170, 200, "Title 01", true);
  drawHistEvent(300, 300, "Title 02", false);
}

void drawRef () {
  textAlign(CENTER);
  textSize(38);
  fill(255);
  text("Historic Computer Systems", 450, 60);
  textSize(25);
  text("by Kayla Langarica", 450, 85);

  // Render timline
  line(100, 250, 800, 250);
  strokeWeight(3);
  line(100, 260, 100, 240);
  strokeWeight(2);
  line(800, 260, 800, 240);

  //Text Markers
  textSize(14);
  text("1935", 100, 275);
  text("1995", 800, 275);
}

void drawHistEvent (int x, int y, String title, boolean top ) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x,y,x+20,y-50);
  }
  rectMode(CENTER);
  fill(255);
  rect(x, y, 80, 30, 7);
  fill(0);
  text(title, x, y+5);
  
  if(mouseX>x-40 && mouseX<x+40 && mouseY<y+40 && mouseY>y-40){
  text("Details",width/2,300);
  }
}
