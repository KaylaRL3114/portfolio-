// Kayla Langarica | 18 Sept 2025 | MakingCars
Car r14,k31;
Car[] cars = new Car[100];

void setup() {
  size(600, 600);
  r14= new Car(#3B8EF2);
  k31= new Car(#FFDBF2);
  for(int i=0; i<cars.length; i=i+1) {
  cars[i] = new Car(#BA8CF0);
  }
}

void draw() {
  background(255);
  r14.display ();
  r14.move();
  k31.display();
  k31.move();
  for(int i=0; i<cars.length; i=i+1) {
  cars[i].display();
  cars[i].move();
  }
}
