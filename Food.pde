public class Food {
 public PVector pos;
 public final int SIZE = 20;
 public final color c = color(0,200,30);
 public int health = (int)random(1,5);
 public boolean active = true;
 public int i_sec;
 Timer timer = new Timer();
 
  public Food(int x, int velocity) {
   pos = new PVector(x,velocity);
 }
 
  public void show(){
    if (active){
   fill(c);
   circle(pos.x, pos.y, SIZE);
    }
    if (active == false )
    foodRespawn();
 }
  private void foodRespawn () {
   
     System.out.println(i_sec);
    if ((timer.timerWaitInSeconds(i_sec)) == true){
    active = true;
    
  }
}
}
