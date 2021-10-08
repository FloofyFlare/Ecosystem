public class Creature {
 public PVector pos, vel;
 public float hp = 100.0;
 public final int SIZE = 10;
 public final color c = color(30,30,30);
 public int health = (int)random(1,5);
 public boolean active = true;
 public PVector margin;
 
 
 public Creature(int x, int velocity) {
   pos = new PVector(x,velocity);
   vel = new PVector(1,1);
 }
 
 public void show(){
   if (active) {
   fill(c);
   rect(pos.x, pos.y, SIZE, SIZE);
   }
 }
 public void move() {
   pos.add(vel);
   
   //controls margin 
   if (pos.y > height || pos.y < 0){
       vel = new PVector(vel.x,-vel.y);
 }
 if (pos.x > width || pos.x < 0){
       vel = new PVector(-vel.x,vel.y);
}
 }
 
 public void eat(Food f) { //Erroooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooor food not eaten
   if ((Math.random() * 10) > 9 && (dist(f.pos.x, f.pos.y, pos.x,pos.y) < 10)){
     f.active = false;
   }
 }
 
 public void Breed(Creature c) {
 
 }
 
 public void attack(Creature c) {
   
   if ((Math.random() * 10) > 9 && (dist(c.pos.x, c.pos.y, pos.x,pos.y) < 10) && c != this){
     
     c.active = false;
 }
}
}
