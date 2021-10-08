public class Food {
 public PVector pos;
 public final int SIZE = 10;
 public final color c = color(0,200,30);
 public int health = (int)random(1,5);
 public boolean active = true;
 
  public Food(int x, int velocity) {
   pos = new PVector(x,velocity);
 }
 
  public void show(){
    if (active){
   fill(c);
   circle(pos.x, pos.y, SIZE);
    }
 }
}
