public void setup(){
  size(400,400);
}
public void draw(){

}
public void mouseDragged(){
  sierpinski(200,200,150);
}
public void sierpinski(int x, int y, int len){
  if(len<=20){
    triangle(x,y,len,len,len,y);
    //Draw a triangle with the left corner at (x,y) and a base and height equal to len
  }else{
    //call sierpinksi function to draw a triangle with the left corner at (x,y) and a base and height equal to len/2.
    //call sierpinksi function a second time to draw another triangle a distance of len/2 to the right of the first triangle.
    //call sierpinksi function a third time to draw a triangle a distance of len/4 to the right and len/2 up from the first triangle.
    sierpinski(x,y,x+len,len/2,len/2,y);
  }
}
