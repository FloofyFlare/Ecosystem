Creature[] creatures = new Creature[100];
Food[] foods = new Food[20];
int alive = 11;

public void setup() {
  size(800,800);
   for (int i = 0; i <= creatures.length - 1; i++) {
     //creates Creature then provides random position
     PVector x = PVector.random2D();
      spawnCreatures();
      spawnFood();
   }
}

public void draw(){
   background(220);
    for (int i = 0; i < alive; i++) 
      creatures[i].active = true;
    
    for (int i = 0; i < creatures.length; i++) {
      creatures[i].show();
      creatures[i].move();
    for (int j = 0; j < foods.length; j++) {
        creatures[i].eat(foods[j]);
      } 
    
      for (int j = 0; j < creatures.length; j++) {
        creatures[i].attack(creatures[j]);
      } 
  } 
  
    for (int i = 0; i < foods.length; i++) {
    foods[i].show();
    
  } 
  
}

public void spawnCreatures() {
  for (int i = 0; i < creatures.length ; i++) {
  creatures[i] = new Creature((int)(Math.random()*width), (int)(Math.random()*height));
  }
}
public void spawnFood() {
  for (int i = 0; i < foods.length; i++) {
  foods[i] = new Food((int)(Math.random()*width), (int)(Math.random()*height));
  }
}
