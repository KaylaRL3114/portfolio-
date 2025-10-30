// Kayla Langarica |25 Sept 2025|Calculator
Button [] buttons =new Button [12];
Button[] numButtons= new Button [10];

float l, r, result;
String dVal;
char  op;
boolean left;

void setup() {
  size (175, 260);
  l=0.0;
  r=0.0;
  result=0.0;
  dVal="0.0";
  op=' ';
  left = true;
  buttons [0]= new Button (25, 90, 30, 20, 'C', #FFE8F7, #E8B9D8);
  numButtons [0]= new Button (45, 240, 70, 20, '0', #FACAEA, #D38FBD);
  buttons [1]= new Button (25, 120, 30, 20, 'π', #FACAEA, #D38FBD);
  numButtons [7]= new Button (25, 150, 30, 20, '7', #FACAEA, #D38FBD);
  numButtons [4]= new Button (25, 180, 30, 20, '4', #FACAEA, #D38FBD);
  numButtons[1]= new Button (25, 210, 30, 20, '1', #FACAEA, #D38FBD);
  buttons [2]= new Button (65, 90, 30, 20, '±', #FFE8F7, #D38FBD);
  buttons [3]= new Button (65, 120, 30, 20, '²', #FACAEA, #D38FBD);
  numButtons [8]= new Button (65, 150, 30, 20, '8', #FACAEA, #D38FBD);
  numButtons [5]= new Button (65, 180, 30, 20, '5', #FACAEA, #D38FBD);
  numButtons [2]= new Button (65, 210, 30, 20, '2', #FACAEA, #D38FBD);
  buttons [4]= new Button (105, 90, 30, 20, '%', #FFE8F7, #E8B9D8);
  buttons [5]= new Button (105, 120, 30, 20, '√', #FACAEA, #D38FBD);
  numButtons [9]= new Button (105, 150, 30, 20, '9', #FACAEA, #D38FBD);
  numButtons [6]= new Button (105, 180, 30, 20, '6', #FACAEA, #D38FBD);
  numButtons [3]= new Button (105, 210, 30, 20, '3', #FACAEA, #D38FBD);
  buttons [6]= new Button (105, 240, 30, 20, '.', #FACAEA, #D38FBD);
  buttons [7]= new Button (145, 90, 30, 20, '÷', #D16BAF, #DE98C7);
  buttons [8]= new Button (145, 120, 30, 20, '×', #D16BAF, #DE98C7);
  buttons [9]= new Button (145, 150, 30, 20, '-', #D16BAF, #DE98C7);
  buttons [10]= new Button (145, 180, 30, 20, '=', #D16BAF, #DE98C7);
  buttons [11]= new Button (145, 225, 30, 50, '+', #D16BAF, #DE98C7);
}

void draw () {
  background(#F5AFDE);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay ();
}

void keyReleased () {
  println ("Key:" + key );
  println("KeyCode:" + keyCode);
  if ( keyCode==107 ) {
    dVal= "0.0";
    left = false;
    op='+';
  } else if (keyCode ==45 || keyCode ==109) {
    dVal="0.0";
    left=false;
    op='-';
  } else if (keyCode ==106) {
    dVal="0.0";
    left=false;
    op='*';
  } else if (keyCode ==111) {
    dVal="0.0";
    left=false;
    op='/';
  } else if  (keyCode ==49 || keyCode ==97) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="1";
          l=float(dVal);
        } else {
          dVal+="1";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="1";
          r=float(dVal);
        } else {
          dVal+="1";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==50 || keyCode ==98) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="2";
          l=float(dVal);
        } else {
          dVal+="2";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="2";
          r=float(dVal);
        } else {
          dVal+="2";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==51 || keyCode ==99) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="3";
          l=float(dVal);
        } else {
          dVal+="3";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="3";
          r=float(dVal);
        } else {
          dVal+="3";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==52 || keyCode ==100) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="4";
          l=float(dVal);
        } else {
          dVal+="4";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="4";
          r=float(dVal);
        } else {
          dVal+="4";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==53 || keyCode ==101) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="5";
          l=float(dVal);
        } else {
          dVal+="5";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="5";
          r=float(dVal);
        } else {
          dVal+="5";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==54 || keyCode ==102) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="6";
          l=float(dVal);
        } else {
          dVal+="6";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="6";
          r=float(dVal);
        } else {
          dVal+="6";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==55 || keyCode ==103) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="7";
          l=float(dVal);
        } else {
          dVal+="7";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="7";
          r=float(dVal);
        } else {
          dVal+="7";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==56 || keyCode ==104) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="8";
          l=float(dVal);
        } else {
          dVal+="8";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="8";
          r=float(dVal);
        } else {
          dVal+="8";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==57 || keyCode ==105) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="9";
          l=float(dVal);
        } else {
          dVal+="9";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="9";
          r=float(dVal);
        } else {
          dVal+="9";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==48|| keyCode ==96) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal="0";
          l=float(dVal);
        } else {
          dVal+="0";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal="0";
          r=float(dVal);
        } else {
          dVal+="0";
          r=float(dVal);
        }
      }
  } else if  (keyCode ==46|| keyCode ==110) {
    if (dVal.length()<100)
      if ( left == true) {
        if (dVal.equals("0.0")) {
          dVal=".";
          l=float(dVal);
        } else {
          dVal+=".";
          l=float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal=".";
          r=float(dVal);
        } else {
          dVal+=".";
          r=float(dVal);
        }
      }
  } else if (key == 'c' || key == 'C') {
    l = 0.0;
    r = 0.0;
    result = 0.0;
    dVal = "0.0";
    op = ' ';
    left = true;
  } else if (key == '=' || keyCode == ENTER || keyCode == RETURN) {
    performCalculation();
  }
}

void mouseReleased () {
  for (int i=0; i<buttons.length; i++) {
    if (buttons [i].over && buttons [i].val == '+') {
      dVal= "0.0";
      left = false;
      op='+';
    } else if (buttons[i].over && buttons[i].val=='-') {
      dVal="0.0";
      left=false;
      op='-';
    } else if (buttons[i].over && buttons[i].val == '×') {
      dVal = "0.0";
      left = false;
      op = '*';
    } else if (buttons[i].over && buttons[i].val == '÷') {
      dVal = "0.0";
      left = false;
      op = '/';
    } else if (buttons [i].over && buttons [i].val == '.') {
      if (dVal.contains(".") == false) {
        dVal+='.';
      }
    } else if (buttons [i].over && buttons [i].val == '=') {
      performCalculation ();
    } else if (buttons [i].over && buttons [i].val == '±') {
      if (left) {
        l=l*-1;
        dVal=str(l);
      } else {
        r=r*-1;
        dVal=str(r);
      }
    } else if (buttons [i].over && buttons [i].val == 'π') {
      if (left) {
        l=PI;
        dVal=str(l);
      } else {
        r=PI;
        dVal=str(r);
      }
    } else if (buttons [i].over && buttons [i].val == '√') {
      if (left) {
        l=sqrt(l);
        dVal=str(l);
      } else {
        r= sqrt(r);
        dVal=str(r);
      }
    } else if (buttons [i].over && buttons [i].val == '%') {
      if (left) {
        l= l*0.01;
        dVal=str(l);
      } else {
        r= r*0.01;
        dVal=str(r);
      }
    } else if (buttons [i].over && buttons [i].val == '²') {
      if (left) {
        l= pow(l, 2);
        dVal=str(l);
      } else {
        r= pow(r, 2);
        dVal=str(r);
      }
    } else if (buttons [i].over && buttons [i].val == 'C') {
      l=0.0;
      r=0.0;
      result=0.0;
      dVal= "0.0";
      op=' ';
      left = true;
    }
  }



  for (int i= 0; i< numButtons.length; i++) {
    if (dVal.length()<100)
      if (numButtons [i].over && left == true) {
        if (dVal.equals("0.0")) {
          dVal=str(numButtons[i].val);
          l=float(dVal);
        } else {
          dVal+=str(numButtons[i].val);
          l=float(dVal);
        }
      } else if (numButtons [i].over && left == false) {
        if (dVal.equals("0.0")) {
          dVal=str(numButtons[i].val);
          r=float(dVal);
        } else {
          dVal+=str(numButtons[i].val);
          r=float(dVal);
        }
      }
  }
  println("l:" + l);
  println("r:"+r);
  println("result:"+result);
  println("left:"+left );
  println("op:"+op);
}

void updateDisplay () {
  rectMode(CORNER);
  fill(255);
  rect(10, 20, 150, 50);
  fill(0);
  textSize (30);
  textAlign(RIGHT);
  String displayText = dVal;
  if (displayText.length() > 9) {
    displayText = displayText.substring(displayText.length() - 9);
  }
  text(displayText, width -23, 60 );
}

void performCalculation () {
  if (op =='+') {
    result = l+r;
  } else if (op == ('-')) {
    result = l-r;
  } else if (op == ('*')) {
    result = l*r;
  } else if (op== ('/')) {
    result = l/r;
  } else if (op==('P')) {
    result= pow(l, r);
  } else if (op== 'S') {
    result = sqrt(r);
  }
  dVal=str(result);
  l=result;
  left=true;
}
