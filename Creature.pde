public class Creature {
 public PVector pos, vel;
 public float hp = 20.0;
 public final int SIZE = 10;
 public color c = color(0,0,255);
 public int health = (int)random(1,5);
 public boolean active = false;
 public PVector margin;
 
 public Creature(int x, int velocity) {
   pos = new PVector(x,velocity);
   vel = new PVector(1,1);
 }
 
 public void show(){
   if (hp <= 0)
   active = false;
   if (active) {
   fill(c);
   rect(pos.x, pos.y, SIZE, SIZE);
   }
   if (hp <= 10){
     c = color(0,10,0);
   }
   else 
   {
     c = color(0,0,255);
   }
   
 }
 public void move() {
   pos.add(vel);
   hp -= 0.01;
   //controls margin 
   if (pos.y > height || pos.y < 0){
       vel = new PVector(vel.x,-vel.y);
 }
 if (pos.x > width || pos.x < 0){
       vel = new PVector(-vel.x,vel.y);
}
 }
 
 public void eat(Food f) { 
   if (hp <= 20 && f.active == true && (dist(f.pos.x, f.pos.y, pos.x,pos.y) < 12) && active == true){
     hp = 20;
     f.active = false;
     f.i_sec = second();
   }
 }
 
  public boolean breed(Creature c) {
   //Distance wise
   if ((Math.random() * 10) > 8 && (dist(c.pos.x, c.pos.y, pos.x,pos.y) < 10) && c != this && c.active == true && active == true){
     return true;
   }
     else
     {
       return false;
     }
     
     
 }


 public void attack(Creature c) {
   
   if ((Math.random() * 10) > 8 && (dist(c.pos.x, c.pos.y, pos.x,pos.y) < 10) && c != this && c.active == true && active == true){
     
     c.hp -= 6;
 }
}
}
